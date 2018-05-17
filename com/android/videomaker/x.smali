.class final Lcom/android/videomaker/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aNC:Lcom/android/videomaker/f;


# direct methods
.method constructor <init>(Lcom/android/videomaker/f;)V
    .registers 2

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/videomaker/x;->aNC:Lcom/android/videomaker/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/videomaker/x;->aNC:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbX(Lcom/android/videomaker/f;)V

    .line 841
    return-void
.end method
