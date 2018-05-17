.class final Lcom/android/common/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ale:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 3187
    iput-object p1, p0, Lcom/android/common/ak;->ale:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 3191
    iget-object v0, p0, Lcom/android/common/ak;->ale:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3192
    iget-object v0, p0, Lcom/android/common/ak;->ale:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avO(Lcom/android/common/ActivityBase;)V

    .line 3190
    :cond_f
    return-void
.end method
