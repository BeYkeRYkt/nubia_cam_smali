.class final Lcom/android/common/appService/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic nl:Lcom/android/common/appService/q;


# direct methods
.method constructor <init>(Lcom/android/common/appService/q;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/common/appService/aj;->nl:Lcom/android/common/appService/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/common/appService/aj;->nl:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->kx(Lcom/android/common/appService/q;)Lcom/android/common/appService/T;

    move-result-object v0

    if-nez v0, :cond_9

    .line 93
    return-void

    .line 95
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 91
    :goto_10
    :pswitch_10
    return-void

    .line 97
    :pswitch_11
    iget-object v0, p0, Lcom/android/common/appService/aj;->nl:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->kx(Lcom/android/common/appService/q;)Lcom/android/common/appService/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/T;->oJ()V

    goto :goto_10

    .line 100
    :pswitch_1b
    iget-object v0, p0, Lcom/android/common/appService/aj;->nl:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->kx(Lcom/android/common/appService/q;)Lcom/android/common/appService/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/T;->oK()V

    goto :goto_10

    .line 95
    nop

    :pswitch_data_26
    .packed-switch 0x7f1001b0
        :pswitch_11
        :pswitch_10
        :pswitch_1b
    .end packed-switch
.end method
