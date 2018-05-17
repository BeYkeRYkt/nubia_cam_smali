.class public Lcom/android/common/appService/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private iX:Ljava/lang/String;

.field private iY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/common/appService/C;->iX:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/android/common/appService/C;->iY:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public ma()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/common/appService/C;->iX:Ljava/lang/String;

    return-object v0
.end method

.method public mb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/common/appService/C;->iY:Ljava/lang/String;

    return-object v0
.end method
