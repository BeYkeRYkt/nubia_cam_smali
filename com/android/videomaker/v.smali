.class final Lcom/android/videomaker/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic aNz:Lcom/android/videomaker/f;


# direct methods
.method constructor <init>(Lcom/android/videomaker/f;)V
    .registers 2

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/android/videomaker/v;->aNz:Lcom/android/videomaker/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3

    .prologue
    .line 1351
    packed-switch p1, :pswitch_data_10

    .line 1350
    :goto_3
    return-void

    .line 1353
    :pswitch_4
    iget-object v0, p0, Lcom/android/videomaker/v;->aNz:Lcom/android/videomaker/f;

    invoke-virtual {v0}, Lcom/android/videomaker/f;->bbx()V

    goto :goto_3

    .line 1356
    :pswitch_a
    iget-object v0, p0, Lcom/android/videomaker/v;->aNz:Lcom/android/videomaker/f;

    invoke-virtual {v0}, Lcom/android/videomaker/f;->bbx()V

    goto :goto_3

    .line 1351
    :pswitch_data_10
    .packed-switch -0x2
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method
