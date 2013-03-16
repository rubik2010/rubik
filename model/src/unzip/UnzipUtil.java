package unzip;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import org.apache.tools.zip.ZipEntry;
import org.apache.tools.zip.ZipFile;
public class UnzipUtil {

 /**
  * 创建目录
  *
  * @param path
  *            目录绝对路径名
  */
 static void createDir(String path) {
  File dir = new File(path);
  if (dir.exists() == false)
   dir.mkdir();
 }

 /** http://www.ablanxue.com
  * 取得文件名,不包含后缀名
  *
  * @param name
  *            完整文件名
  * @return 文件名(不包含后缀名)
  */
 static String getSuffixName(String name) {
  return name.substring(0, name.lastIndexOf("."));
 }

 public static void main(String[] args) throws Exception {
  unzip("C:/Users/Administrator/Desktop/wabacus4.0-release.zip");
  //System.out.println("over....................");
 }

 /**
  * 解压zip文件
  *
  * @param zipFilePath
  *            zip文件绝对路径
  * @param unzipDirectory
  *            解压到的确
  * @throws Exception
  */
 public static void unzip(String zipFilePath)
   throws Exception {
  // 创建文件对象
  File file = new File(zipFilePath);
  // 创建zip文件对象
  ZipFile zipFile = new ZipFile(zipFilePath,"GBK");
  // 创建本zip文件解压目录
  File unzipFile = new File(file.getParentFile() + "/"
    + getSuffixName(file.getName()));
  if (unzipFile.exists())
   unzipFile.delete();
  unzipFile.mkdir();
  // 得到zip文件条目枚举对象
  Enumeration zipEnum = zipFile.getEntries();
  // 定义输入输出流对象
  InputStream input = null;
  OutputStream output = null;
  // 定义对象
  ZipEntry entry = null;
  // 循环读取条目
  while (zipEnum.hasMoreElements()) {
   // 得到当前条目
   entry = (ZipEntry) zipEnum.nextElement();
   String entryName = new String(entry.getName());
   // 用/分隔条目名称
   String names[] = entryName.split("\\/");
   int length = names.length;
   String path = unzipFile.getAbsolutePath();
   for (int v = 0; v < length; v++) {
    if (v < length - 1) { // 最后一个目录之前的目录
     path += "/" + names[v] + "/";
     createDir(path);
    } else { // 最后一个
     if (entryName.endsWith("/")) // 为目录,则创建文件夹
      createDir(unzipFile.getAbsolutePath() + "/" + entryName);
     else { // 为文件,则输出到文件
      input = zipFile.getInputStream(entry);
      output = new FileOutputStream(new File(unzipFile
        .getAbsolutePath()
        + "/" + entryName));
      byte[] buffer = new byte[1024 * 8];
      int readLen = 0;
      while ((readLen = input.read(buffer, 0, 1024 * 8)) != -1)
       output.write(buffer, 0, readLen);
      // 关闭流
      input.close();
      output.flush();
      output.close();
     }
    }
   }
  }
 }
}