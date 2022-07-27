package com.team.appinfo.util;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.File;

/**
 * @author 王建兵
 * @Classname FileUploadUtil
 * @Description TODO
 * @Date 2020/5/17 16:09
 * @Created by Administrator
 */
public class FileUploadUtil {
    /**
     * 实现文件上传
     * @param savePath  保存的绝对路径
     * @param file 上传文件
     * @return  上传的文件名称,如果是null表示上传失败
     */
    public static String  uploadFile(String savePath, CommonsMultipartFile file){
        try {
            //生成唯一文件名
            String uploadFileName=file.getOriginalFilename();
            String expname=uploadFileName.substring(uploadFileName.lastIndexOf("."));
            String fileName=System.currentTimeMillis()+expname;
            //上传文件
            File saveFile=new File(savePath+"/"+fileName);
            file.transferTo(saveFile);  //上传
            return fileName;
        }catch (Exception e){
             e.printStackTrace();
        }
        return null;
    }
}
