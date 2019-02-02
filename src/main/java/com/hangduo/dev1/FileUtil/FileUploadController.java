package com.hangduo.dev1.FileUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ResourceLoader;
import org.springframework.web.multipart.MultipartFile;

public class FileUploadController {
    private final ResourceLoader resourceLoader;
    @Autowired
    public FileUploadController(ResourceLoader resourceLoader) {
        this.resourceLoader = resourceLoader;
    }
    @Value("${web.upload-path}")
    private String path;
    /**
     *
     * @param file 上传的文件
     * @return
     */
    public static String upload(MultipartFile file ){
        //1定义要上传文件 的存放路径
        String localPath="F:/images";
        //2获得文件名字
        String fileName=file.getOriginalFilename();
        //2上传失败提示
        String warning="";
        if(FileUtils.upload(file, localPath, fileName)){
            //上传成功
            warning=localPath+fileName;

        }else{
            warning="error";
        }
        System.out.println(warning);
        return warning;
    }
    /**
     * 显示图片
     * @param fileName 文件名
     * @return
     */

//    @RequestMapping("show")
//    public ResponseEntity  show(String fileName){
//
//
//        try {
//            // 由于是读取本机的文件，file是一定要加上的， path是在application配置文件中的路径
//            return ResponseEntity.ok(resourceLoader.getResource("file:" + path + fileName));
//        } catch (Exception e) {
//            return ResponseEntity.notFound().build();
//        }
//
//    }

}
