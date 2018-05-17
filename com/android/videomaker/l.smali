.class Lcom/android/videomaker/l;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aML:Lcom/android/videomaker/j;


# direct methods
.method private constructor <init>(Lcom/android/videomaker/j;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/videomaker/j;Lcom/android/videomaker/l;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/videomaker/l;-><init>(Lcom/android/videomaker/j;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7a

    .line 137
    :goto_7
    :pswitch_7
    return-void

    .line 140
    :pswitch_8
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcU(Lcom/android/videomaker/j;)Lcom/android/videomaker/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/videomaker/k;->bdo()V

    goto :goto_7

    .line 143
    :pswitch_12
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcU(Lcom/android/videomaker/j;)Lcom/android/videomaker/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/videomaker/k;->bdj()V

    goto :goto_7

    .line 146
    :pswitch_1c
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcU(Lcom/android/videomaker/j;)Lcom/android/videomaker/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/videomaker/k;->bdk()V

    goto :goto_7

    .line 149
    :pswitch_26
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcU(Lcom/android/videomaker/j;)Lcom/android/videomaker/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/videomaker/k;->bdi()V

    goto :goto_7

    .line 152
    :pswitch_30
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcU(Lcom/android/videomaker/j;)Lcom/android/videomaker/k;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/videomaker/k;->bdm(Z)V

    goto :goto_7

    .line 155
    :pswitch_3a
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcU(Lcom/android/videomaker/j;)Lcom/android/videomaker/k;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/videomaker/k;->bdm(Z)V

    goto :goto_7

    .line 158
    :pswitch_44
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bdh(Lcom/android/videomaker/j;)V

    goto :goto_7

    .line 161
    :pswitch_4a
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcU(Lcom/android/videomaker/j;)Lcom/android/videomaker/k;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/videomaker/k;->bdn(Z)V

    goto :goto_7

    .line 164
    :pswitch_54
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcU(Lcom/android/videomaker/j;)Lcom/android/videomaker/k;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/videomaker/k;->bdn(Z)V

    goto :goto_7

    .line 167
    :pswitch_5e
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bco()V

    goto :goto_7

    .line 170
    :pswitch_64
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcG()V

    goto :goto_7

    .line 173
    :pswitch_6a
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcG()V

    .line 174
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bck()V

    .line 175
    iget-object v0, p0, Lcom/android/videomaker/l;->aML:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bdg(Lcom/android/videomaker/j;)V

    goto :goto_7

    .line 138
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_12
        :pswitch_1c
        :pswitch_26
        :pswitch_7
        :pswitch_7
        :pswitch_30
        :pswitch_3a
        :pswitch_44
        :pswitch_5e
        :pswitch_4a
        :pswitch_54
        :pswitch_64
        :pswitch_6a
    .end packed-switch
.end method
