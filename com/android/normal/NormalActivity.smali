.class public Lcom/android/normal/NormalActivity;
.super Lcom/android/common/ActivityBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/common/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected auf()Lcom/android/common/appService/y;
    .registers 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/normal/NormalActivity;->aiY:Lcom/android/common/appService/y;

    if-nez v0, :cond_b

    .line 11
    new-instance v0, Lcom/android/normal/f;

    invoke-direct {v0}, Lcom/android/normal/f;-><init>()V

    iput-object v0, p0, Lcom/android/normal/NormalActivity;->aiY:Lcom/android/common/appService/y;

    .line 13
    :cond_b
    iget-object v0, p0, Lcom/android/normal/NormalActivity;->aiY:Lcom/android/common/appService/y;

    return-object v0
.end method
