.class final Lcom/android/common/image3d/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cL:Lcom/android/common/image3d/b;


# direct methods
.method constructor <init>(Lcom/android/common/image3d/b;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/common/image3d/n;->cL:Lcom/android/common/image3d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/common/image3d/n;->cL:Lcom/android/common/image3d/b;

    invoke-static {v0}, Lcom/android/common/image3d/b;->bu(Lcom/android/common/image3d/b;)V

    .line 152
    return-void
.end method
