.class final Lcom/android/common/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic akZ:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/common/af;->akZ:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/common/af;->akZ:Lcom/android/common/ActivityBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/common/ActivityBase;->ajb:Z

    .line 1126
    iget-object v0, p0, Lcom/android/common/af;->akZ:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asT()Z

    .line 1124
    return-void
.end method
