.class public Lcom/android/common/h/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/j;


# instance fields
.field private Yx:Lcom/android/common/appService/W;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/h/m;->Yx:Lcom/android/common/appService/W;

    .line 11
    iput-object p1, p0, Lcom/android/common/h/m;->Yx:Lcom/android/common/appService/W;

    .line 10
    return-void
.end method


# virtual methods
.method public vB(Lcom/android/common/cameradevice/g;)V
    .registers 3

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/common/h/m;->Yx:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->sh(Lcom/android/common/cameradevice/g;)V

    .line 15
    return-void
.end method
