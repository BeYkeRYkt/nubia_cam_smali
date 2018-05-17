package com.umeng.analytics.social;

import android.text.TextUtils;
import com.umeng.analytics.C1296a;
import java.util.Locale;

public class UMPlatformData {
    private UMedia f610a;
    private String f611b = "";
    private String f612c = "";
    private String f613d;
    private GENDER f614e;

    public enum GENDER {
        MALE(0) {
            public String toString() {
                return String.format(Locale.US, "Male:%d", new Object[]{Integer.valueOf(this.value)});
            }
        },
        FEMALE(1) {
            public String toString() {
                return String.format(Locale.US, "Female:%d", new Object[]{Integer.valueOf(this.value)});
            }
        };
        
        public int value;

        private GENDER(int i) {
            this.value = i;
        }
    }

    public enum UMedia {
        SINA_WEIBO {
            public String toString() {
                return "sina";
            }
        },
        TENCENT_WEIBO {
            public String toString() {
                return "tencent";
            }
        },
        TENCENT_QZONE {
            public String toString() {
                return "qzone";
            }
        },
        TENCENT_QQ {
            public String toString() {
                return "qq";
            }
        },
        WEIXIN_FRIENDS {
            public String toString() {
                return "wxsesion";
            }
        },
        WEIXIN_CIRCLE {
            public String toString() {
                return "wxtimeline";
            }
        },
        RENREN {
            public String toString() {
                return "renren";
            }
        },
        DOUBAN {
            public String toString() {
                return "douban";
            }
        };
    }

    public UMPlatformData(UMedia uMedia, String str) {
        if (uMedia == null || TextUtils.isEmpty(str)) {
            C1330b.m699b(C1296a.f549e, "parameter is not valid");
            return;
        }
        this.f610a = uMedia;
        this.f611b = str;
    }

    public String getWeiboId() {
        return this.f612c;
    }

    public void setWeiboId(String str) {
        this.f612c = str;
    }

    public UMedia getMeida() {
        return this.f610a;
    }

    public String getUsid() {
        return this.f611b;
    }

    public String getName() {
        return this.f613d;
    }

    public void setName(String str) {
        this.f613d = str;
    }

    public GENDER getGender() {
        return this.f614e;
    }

    public void setGender(GENDER gender) {
        this.f614e = gender;
    }

    public boolean isValid() {
        if (this.f610a == null || TextUtils.isEmpty(this.f611b)) {
            return false;
        }
        return true;
    }

    public String toString() {
        return "UMPlatformData [meida=" + this.f610a + ", usid=" + this.f611b + ", weiboId=" + this.f612c + ", name=" + this.f613d + ", gender=" + this.f614e + "]";
    }
}
