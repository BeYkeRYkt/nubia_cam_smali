.class final Lcom/android/common/appService/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic nv:Lcom/android/common/appService/M;


# direct methods
.method constructor <init>(Lcom/android/common/appService/M;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/common/appService/at;->nv:Lcom/android/common/appService/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method
