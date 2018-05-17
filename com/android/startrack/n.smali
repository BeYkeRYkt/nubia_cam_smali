.class final Lcom/android/startrack/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aRF:Lcom/android/startrack/h;


# direct methods
.method constructor <init>(Lcom/android/startrack/h;)V
    .registers 2

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/startrack/n;->aRF:Lcom/android/startrack/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/startrack/n;->aRF:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bin(Lcom/android/startrack/h;)Lcom/android/common/appService/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/z;->lL(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 214
    iget-object v0, p0, Lcom/android/startrack/n;->aRF:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->biu(Lcom/android/startrack/h;)V

    .line 212
    :cond_12
    return-void
.end method
