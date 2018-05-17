.class final Lcom/android/common/ui/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic Ex:Lcom/android/common/ui/WheelView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/WheelView;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/common/ui/bm;->Ex:Lcom/android/common/ui/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 11

    .prologue
    .line 93
    if-ne p2, p6, :cond_9

    if-ne p3, p7, :cond_9

    if-ne p4, p8, :cond_9

    .line 94
    if-ne p5, p9, :cond_9

    .line 95
    return-void

    .line 97
    :cond_9
    iget-object v0, p0, Lcom/android/common/ui/bm;->Ex:Lcom/android/common/ui/WheelView;

    invoke-static {v0}, Lcom/android/common/ui/WheelView;->FC(Lcom/android/common/ui/WheelView;)V

    .line 92
    return-void
.end method
