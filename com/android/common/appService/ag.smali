.class final Lcom/android/common/appService/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic ni:Lcom/android/common/appService/l;


# direct methods
.method constructor <init>(Lcom/android/common/appService/l;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/common/appService/ag;->ni:Lcom/android/common/appService/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/common/appService/ag;->ni:Lcom/android/common/appService/l;

    invoke-static {v0}, Lcom/android/common/appService/l;->jY(Lcom/android/common/appService/l;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 70
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/common/appService/ag;->ni:Lcom/android/common/appService/l;

    invoke-static {v1, v0}, Lcom/android/common/appService/l;->jZ(Lcom/android/common/appService/l;I)V

    .line 79
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method
