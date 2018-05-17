.class public Lcom/android/videomaker/VideoMakerActivity;
.super Lcom/android/common/ActivityBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/common/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected auf()Lcom/android/common/appService/y;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/videomaker/VideoMakerActivity;->aiY:Lcom/android/common/appService/y;

    if-nez v0, :cond_b

    .line 13
    new-instance v0, Lcom/android/videomaker/q;

    invoke-direct {v0}, Lcom/android/videomaker/q;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/VideoMakerActivity;->aiY:Lcom/android/common/appService/y;

    .line 15
    :cond_b
    iget-object v0, p0, Lcom/android/videomaker/VideoMakerActivity;->aiY:Lcom/android/common/appService/y;

    return-object v0
.end method
