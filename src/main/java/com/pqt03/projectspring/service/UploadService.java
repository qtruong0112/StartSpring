package com.pqt03.projectspring.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;

@Service
public class UploadService {

    private final ServletContext servletContext;

    public UploadService(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    public String handleSaveUploadFile(MultipartFile file, String targetFolder) {
        if (file.isEmpty()) {
            return "";
        }

        String uploadPath = servletContext.getRealPath("/resources/image/" + targetFolder);
        String fileName = System.currentTimeMillis() + "-" + file.getOriginalFilename();

        try {
            File dir = new File(uploadPath);
            if (!dir.exists()) {
                dir.mkdirs();
            }

            File serverFile = new File(dir, fileName);
            try (BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile))) {
                stream.write(file.getBytes());
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }

        // Chỉ trả về tên file để lưu DB
        return fileName;
    }

}
