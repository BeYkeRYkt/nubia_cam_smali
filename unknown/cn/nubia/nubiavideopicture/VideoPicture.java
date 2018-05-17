package cn.nubia.nubiavideopicture;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

public class VideoPicture {
	
	private static final String VIDEO_PICTURE = "nubiaVpfile";

	/**
	 * 创建视频图片文件
	 * @param pictureAbsPath 图片文件绝对路径
	 * @param videoAbsPath 视频文件绝对路径
	 * @retval 0  表示成功
	 * @retval 1 表示失败
	 */
	public static int createVpFile(String pictureAbsPath, String videoAbsPath){
		int result = 0;
		InputStream videoFile = null;
		RandomAccessFile picFile = null;
		try {
			picFile = new RandomAccessFile(pictureAbsPath, "rw");
			videoFile = new FileInputStream(videoAbsPath);
			long picLength = picFile.length();
			picFile.seek(picLength + 1);
			
			byte[] videoBuffer = new byte[1024];
			int length = videoFile.read(videoBuffer);
			while(length > 0){
				picFile.write(videoBuffer, 0, length);
				length = videoFile.read(videoBuffer);  
			}
			picFile.writeLong(picLength);
			picFile.writeChars(VIDEO_PICTURE);
			
		} catch (IOException e) {
			result = 1;
			e.printStackTrace();
		}finally{
			try {
				if(picFile != null){
					picFile.close();
				}
				if(videoFile != null){
					videoFile.close();
				}
			} catch (IOException e) {
				result = 1;
				e.printStackTrace();
			}
		}
		return result;
	}
	
	/**
	 * 是否为视频图片文件
	 * @param absPath 视频图片文件的绝对路径
	 * @return 当为视频图片文件时，返回true
	 */
	public static boolean isNubiaVpFile(String absPath){
		boolean isNubiaVpFile = false;
		RandomAccessFile file = null;
		try {
			file = new RandomAccessFile(absPath, "r");
			long fileLength = 0;
			fileLength = file.length();
			file.seek(fileLength - VIDEO_PICTURE.length() * 2);
			String strFlag = "";
			for(int i = 0; i < VIDEO_PICTURE.length(); ++i){
				strFlag += file.readChar();
			}
			isNubiaVpFile = strFlag.equals(VIDEO_PICTURE);
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				if(file != null){
					file.close();
					file = null;
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return isNubiaVpFile;
	}
	
	/**
	 * 视频起始位置
	 * @param absPath 视频图片文件的绝对路径
	 * @return 视频起始位置
	 */
	public static long getVpVideoOffset(String absPath){
		RandomAccessFile file = null;
		long offest = 0;
		
		try {
			file = new RandomAccessFile(absPath, "r");
			long fileLength = file.length();
			file.seek(fileLength - 8 - VIDEO_PICTURE.length() * 2);
			long ImageLength = file.readLong();
			offest = ImageLength + 1;
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				if(file != null){
					file.close();
					file = null;
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return offest;
	}
	
	/**
	 * 视频总长度
	 * @param absPath 视频图片文件的绝对路径
	 * @return 视频总长度
	 */
	public static long getVpVideoLength(String absPath){
		RandomAccessFile file = null;
		long length = 0;
		
		try {
			file = new RandomAccessFile(absPath, "r");
			long fileLength = file.length();
			file.seek(fileLength - 8 - VIDEO_PICTURE.length() * 2);
			long ImageLength = file.readLong();
			length = fileLength - ImageLength - 8 - VIDEO_PICTURE.length() * 2;
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				if(file != null){
					file.close();
					file = null;
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return length;
	}
}
