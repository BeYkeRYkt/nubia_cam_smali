.class public Lcom/android/pretty/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private aEy:Lcom/android/pretty/a;


# direct methods
.method public constructor <init>(Lcom/android/pretty/a;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/pretty/r;->aEy:Lcom/android/pretty/a;

    .line 11
    iput-object p1, p0, Lcom/android/pretty/r;->aEy:Lcom/android/pretty/a;

    .line 10
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 4

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/pretty/r;->aEy:Lcom/android/pretty/a;

    invoke-virtual {v0, p1}, Lcom/android/pretty/a;->aRn([B)V

    .line 15
    return-void
.end method
