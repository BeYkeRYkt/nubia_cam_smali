.class final Lcom/android/common/ui/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Dw:Lcom/android/common/ui/ZtemtShutterButton;

.field final synthetic Dx:Z


# direct methods
.method constructor <init>(Lcom/android/common/ui/ZtemtShutterButton;Z)V
    .registers 3

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/common/ui/ay;->Dw:Lcom/android/common/ui/ZtemtShutterButton;

    iput-boolean p2, p0, Lcom/android/common/ui/ay;->Dx:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/common/ui/ay;->Dw:Lcom/android/common/ui/ZtemtShutterButton;

    iget-boolean v1, p0, Lcom/android/common/ui/ay;->Dx:Z

    invoke-static {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->xe(Lcom/android/common/ui/ZtemtShutterButton;Z)V

    .line 101
    return-void
.end method
