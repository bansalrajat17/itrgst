package com.itrgst.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;

public class Pdf {

    static String extractIpAddress(String str) {
        // String str = "from abc.xyz.com (abc.xyz.com. [112.35.4.152]) by xx.yy.com
        // with ESMTPS id ...";
        String returnStr = "";
        Pattern pattern = Pattern.compile("\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}");
        Matcher matcher = pattern.matcher(str);

        while (matcher.find()) {
            returnStr += ("----").concat(matcher.group(0));
            // returnStr += (matcher.group(1).isEmpty())?("------").concat("No
            // Matches"):("------").concat(matcher.group(1));
        }
        System.out.println(returnStr);
        return returnStr;

    }

    public void pdfutil() throws IOException {
        PDDocument pd = null;
        BufferedWriter wr;
        try {
            File input = new File("/home/rajat/Downloads/target_file.pdf"); // The PDF file from where you would like to
                                                                            // extract
            File output = new File("/home/rajat/Downloads/SampleText.txt"); // The text file where you are going to
                                                                            // store the extracted data
            pd = PDDocument.load(input);
            // System.out.println(pd.getNumberOfPages());
            // System.out.println(pd.isEncrypted());
            // pd.save("CopyOfBill.pdf"); // Creates a copy called "CopyOfInvoice.pdf"
            PDFTextStripper stripper = new PDFTextStripper();
            int i = 1;
            stripper.setStartPage(i); // Start extracting from page 3
            while (i < 10) {
                stripper.setEndPage(i); // Extract till page 5

                // load all lines into a string
                String pages = stripper.getText(pd);

                // split by detecting newline
                String[] lines = pages.split("\r\n|\r|\n");

                ArrayList<String> x = new ArrayList<>();

                for (String line : lines) {
                    x.add(extractIpAddress(line));
                }
                i++;
                // wr = new BufferedWriter(new OutputStreamWriter(new
                // FileOutputStream(output)));

                // wr.write(s, off, len);

                // wr = new BufferedWriter(new OutputStreamWriter(new
                // FileOutputStream(output)));
                // stripper.writeText(pd, wr);

                // I use close() to flush the stream.
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pd != null) {
                pd.close();
            }
            // wr.close();
        }
    }
}