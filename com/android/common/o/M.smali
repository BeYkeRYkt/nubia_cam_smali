.class final Lcom/android/common/o/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic aeO:Lcom/android/common/o/p;


# direct methods
.method constructor <init>(Lcom/android/common/o/p;)V
    .registers 2

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/common/o/M;->aeO:Lcom/android/common/o/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 289
    invoke-static {}, Lcom/android/common/o/p;->ami()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MoreSettingLayout onTouch"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x1

    return v0
.end method
