.class public Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;
.super Ljava/util/HashMap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mDefaultValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public Oh(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;->mDefaultValue:Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 87
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;->mDefaultValue:Ljava/lang/Object;

    :cond_8
    return-object v0
.end method
