.class public Lcom/android/intervalometer/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/delaygenerator/a;


# instance fields
.field final synthetic aQn:Lcom/android/intervalometer/f;


# direct methods
.method public constructor <init>(Lcom/android/intervalometer/f;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/intervalometer/h;->aQn:Lcom/android/intervalometer/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aBK(I)V
    .registers 4

    .prologue
    .line 211
    packed-switch p1, :pswitch_data_66

    .line 233
    const-string/jumbo v0, "PreviewDataRender"

    const-string/jumbo v1, "UNKNOWN MESSAGE"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_c
    :goto_c
    return-void

    .line 213
    :pswitch_d
    const-string/jumbo v0, "PreviewDataRender"

    const-string/jumbo v1, "encode complete"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/intervalometer/h;->aQn:Lcom/android/intervalometer/f;

    invoke-static {v0}, Lcom/android/intervalometer/f;->bgU(Lcom/android/intervalometer/f;)Lcom/android/intervalometer/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/intervalometer/h;->aQn:Lcom/android/intervalometer/f;

    invoke-static {v1}, Lcom/android/intervalometer/f;->bgT(Lcom/android/intervalometer/f;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/intervalometer/g;->bgC(Ljava/lang/String;)V

    goto :goto_c

    .line 217
    :pswitch_26
    const-string/jumbo v0, "PreviewDataRender"

    const-string/jumbo v1, "delete half"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/intervalometer/h;->aQn:Lcom/android/intervalometer/f;

    invoke-static {v0}, Lcom/android/intervalometer/f;->bgU(Lcom/android/intervalometer/f;)Lcom/android/intervalometer/g;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 219
    iget-object v0, p0, Lcom/android/intervalometer/h;->aQn:Lcom/android/intervalometer/f;

    invoke-static {v0}, Lcom/android/intervalometer/f;->bgU(Lcom/android/intervalometer/f;)Lcom/android/intervalometer/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/intervalometer/g;->bgA()V

    goto :goto_c

    .line 223
    :pswitch_41
    iget-object v0, p0, Lcom/android/intervalometer/h;->aQn:Lcom/android/intervalometer/f;

    invoke-static {v0}, Lcom/android/intervalometer/f;->bgU(Lcom/android/intervalometer/f;)Lcom/android/intervalometer/g;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 224
    iget-object v0, p0, Lcom/android/intervalometer/h;->aQn:Lcom/android/intervalometer/f;

    invoke-static {v0}, Lcom/android/intervalometer/f;->bgU(Lcom/android/intervalometer/f;)Lcom/android/intervalometer/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/intervalometer/g;->bgD()V

    goto :goto_c

    .line 228
    :pswitch_53
    iget-object v0, p0, Lcom/android/intervalometer/h;->aQn:Lcom/android/intervalometer/f;

    invoke-static {v0}, Lcom/android/intervalometer/f;->bgU(Lcom/android/intervalometer/f;)Lcom/android/intervalometer/g;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 229
    iget-object v0, p0, Lcom/android/intervalometer/h;->aQn:Lcom/android/intervalometer/f;

    invoke-static {v0}, Lcom/android/intervalometer/f;->bgU(Lcom/android/intervalometer/f;)Lcom/android/intervalometer/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/intervalometer/g;->bgB()V

    goto :goto_c

    .line 211
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_d
        :pswitch_26
        :pswitch_41
        :pswitch_53
    .end packed-switch
.end method
