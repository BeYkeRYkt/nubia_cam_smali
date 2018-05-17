.class public Lcom/android/pretty/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private aEe:Lcom/android/common/appService/W;

.field private aEf:Lcom/android/pretty/a;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/pretty/a;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/pretty/o;->aEe:Lcom/android/common/appService/W;

    .line 12
    iput-object v0, p0, Lcom/android/pretty/o;->aEf:Lcom/android/pretty/a;

    .line 15
    iput-object p1, p0, Lcom/android/pretty/o;->aEe:Lcom/android/common/appService/W;

    .line 16
    iput-object p2, p0, Lcom/android/pretty/o;->aEf:Lcom/android/pretty/a;

    .line 14
    return-void
.end method

.method private aTo()Z
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/pretty/o;->aEe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/pretty/o;->aTo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    return-void

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/android/pretty/o;->aEf:Lcom/android/pretty/a;

    invoke-virtual {v0, p1}, Lcom/android/pretty/a;->aRm([B)V

    .line 20
    return-void
.end method
