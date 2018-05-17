.class public Lcom/loc/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "9aj&#k81"

    sput-object v0, Lcom/loc/bb;->a:Ljava/lang/String;

    const-string/jumbo v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    sput-object v0, Lcom/loc/bb;->b:Ljava/lang/String;

    const-string/jumbo v0, "9aj&#k81"

    sput-object v0, Lcom/loc/bb;->a:Ljava/lang/String;

    const-string/jumbo v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    sput-object v0, Lcom/loc/bb;->b:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
