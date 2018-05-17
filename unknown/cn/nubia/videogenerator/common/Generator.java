package cn.nubia.videogenerator.common;


public interface Generator {
    public interface OnCompleteListener{
        public void onComplete();
    }
    public interface OnProgressListener{
        public void onProgress(long progress);
    }
    
}

