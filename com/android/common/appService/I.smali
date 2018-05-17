.class public Lcom/android/common/appService/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public kj:Lcom/android/common/appService/CameraMember;

.field public kk:I

.field public kl:Lcom/android/common/o/a;

.field final synthetic km:Lcom/android/common/appService/H;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/H;ILcom/android/common/appService/CameraMember;Lcom/android/common/o/a;)V
    .registers 5

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/common/appService/I;->km:Lcom/android/common/appService/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p2, p0, Lcom/android/common/appService/I;->kk:I

    .line 35
    iput-object p3, p0, Lcom/android/common/appService/I;->kj:Lcom/android/common/appService/CameraMember;

    .line 36
    iput-object p4, p0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    .line 33
    return-void
.end method
