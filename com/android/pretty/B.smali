.class final Lcom/android/pretty/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aFi:Lcom/android/pretty/j;


# direct methods
.method constructor <init>(Lcom/android/pretty/j;)V
    .registers 2

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/pretty/B;->aFi:Lcom/android/pretty/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/pretty/B;->aFi:Lcom/android/pretty/j;

    invoke-static {v0}, Lcom/android/pretty/j;->aSN(Lcom/android/pretty/j;)Lcom/android/pretty/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/pretty/a;->aRr()V

    .line 269
    return-void
.end method
