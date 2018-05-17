.class public final Lcom/loc/cu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/cu;->a:Z

    sput-object v1, Lcom/loc/cu;->b:Ljava/lang/String;

    sput-object v1, Lcom/loc/cu;->c:Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/loc/cu;->d:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
