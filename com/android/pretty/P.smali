.class final Lcom/android/pretty/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic aFC:Lcom/android/pretty/u;


# direct methods
.method constructor <init>(Lcom/android/pretty/u;)V
    .registers 2

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/pretty/P;->aFC:Lcom/android/pretty/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 11

    .prologue
    .line 502
    if-ne p2, p6, :cond_4

    if-eq p3, p7, :cond_9

    .line 503
    :cond_4
    iget-object v0, p0, Lcom/android/pretty/P;->aFC:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUo(Lcom/android/pretty/u;)V

    .line 501
    :cond_9
    return-void
.end method
