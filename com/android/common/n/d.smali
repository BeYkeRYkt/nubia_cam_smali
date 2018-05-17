.class final Lcom/android/common/n/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic abA:Lcom/android/common/n/a;

.field final synthetic abB:Lcn/nubia/c/a;


# direct methods
.method constructor <init>(Lcom/android/common/n/a;Lcn/nubia/c/a;)V
    .registers 3

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/common/n/d;->abA:Lcom/android/common/n/a;

    iput-object p2, p0, Lcom/android/common/n/d;->abB:Lcn/nubia/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/common/n/d;->abA:Lcom/android/common/n/a;

    invoke-static {v0}, Lcom/android/common/n/a;->aie(Lcom/android/common/n/a;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 266
    iget-object v0, p0, Lcom/android/common/n/d;->abB:Lcn/nubia/c/a;

    invoke-virtual {v0}, Lcn/nubia/c/a;->bMN()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/n/d;->abA:Lcom/android/common/n/a;

    invoke-static {v1}, Lcom/android/common/n/a;->aib(Lcom/android/common/n/a;)Landroid/content/Context;

    move-result-object v1

    .line 265
    invoke-static {v0, v1}, Lcn/nubia/c/b;->bMQ(Ljava/lang/String;Landroid/content/Context;)V

    .line 272
    :goto_17
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 263
    return-void

    .line 268
    :cond_1b
    iget-object v0, p0, Lcom/android/common/n/d;->abA:Lcom/android/common/n/a;

    invoke-static {v0}, Lcom/android/common/n/a;->aib(Lcom/android/common/n/a;)Landroid/content/Context;

    move-result-object v0

    .line 269
    const v1, 0x7f0a043e

    .line 270
    const/4 v2, 0x0

    .line 268
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_17
.end method
