.class Lcom/android/common/o/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/O;


# instance fields
.field final synthetic adG:Lcom/android/common/o/l;


# direct methods
.method private constructor <init>(Lcom/android/common/o/l;)V
    .registers 2

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/common/o/m;->adG:Lcom/android/common/o/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/o/l;Lcom/android/common/o/m;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/o/m;-><init>(Lcom/android/common/o/l;)V

    return-void
.end method


# virtual methods
.method public dx(I)V
    .registers 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/common/o/m;->adG:Lcom/android/common/o/l;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 183
    return-void
.end method
