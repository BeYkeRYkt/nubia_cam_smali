.class final Lcom/android/common/ui/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic El:Lcom/android/common/ui/R;


# direct methods
.method constructor <init>(Lcom/android/common/ui/R;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/common/ui/bd;->El:Lcom/android/common/ui/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/common/ui/bd;->El:Lcom/android/common/ui/R;

    invoke-static {v0, p1}, Lcom/android/common/ui/R;->BV(Lcom/android/common/ui/R;Landroid/view/View;)V

    .line 121
    return-void
.end method
