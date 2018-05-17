.class public Lcom/android/camera/b/a;
.super Lcom/android/common/setting/l;
.source "SourceFile"


# instance fields
.field private amS:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(ILcom/android/common/appService/W;Lcom/android/common/appService/y;)V
    .registers 5

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/setting/l;-><init>(ILcom/android/common/appService/W;Lcom/android/common/appService/y;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/b/a;->amS:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/b/a;->amS:Ljava/util/HashMap;

    .line 22
    return-void
.end method


# virtual methods
.method protected Vi()Lcom/android/common/setting/c;
    .registers 6

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/camera/b/a;->Wg()Lcom/android/common/appService/W;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/b/a;->Ud:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    iget-object v0, p0, Lcom/android/camera/b/a;->amS:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/c;

    .line 35
    if-nez v0, :cond_3c

    .line 36
    iget-object v0, p0, Lcom/android/camera/b/a;->Ue:Lcom/android/common/appService/y;

    iget v4, p0, Lcom/android/camera/b/a;->Ud:I

    invoke-interface {v0, v1, v4, v2}, Lcom/android/common/appService/y;->lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/camera/b/a;->amS:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_3c
    if-eqz v0, :cond_45

    .line 41
    iget v1, p0, Lcom/android/camera/b/a;->Ud:I

    iget-object v2, p0, Lcom/android/camera/b/a;->Uf:Lcom/android/common/setting/s;

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/c;->Tt(ILcom/android/common/setting/s;)V

    .line 43
    :cond_45
    return-object v0
.end method
