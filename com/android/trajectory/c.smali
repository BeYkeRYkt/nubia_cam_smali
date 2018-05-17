.class Lcom/android/trajectory/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic asT:Lcom/android/trajectory/a;


# direct methods
.method private constructor <init>(Lcom/android/trajectory/a;)V
    .registers 2

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/trajectory/a;Lcom/android/trajectory/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/trajectory/c;-><init>(Lcom/android/trajectory/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 906
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18a

    .line 905
    :cond_7
    :goto_7
    return-void

    .line 908
    :pswitch_8
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEP(Lcom/android/trajectory/a;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 909
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEP(Lcom/android/trajectory/a;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 911
    :cond_19
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEC(Lcom/android/trajectory/a;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEC(Lcom/android/trajectory/a;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    .line 912
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aFl(Lcom/android/trajectory/a;)V

    .line 913
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aET(Lcom/android/trajectory/a;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    goto :goto_7

    .line 917
    :pswitch_3b
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    iget-object v1, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aER(Lcom/android/trajectory/a;)[Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aFm(Lcom/android/trajectory/a;[Landroid/graphics/Bitmap;)V

    .line 918
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aFl(Lcom/android/trajectory/a;)V

    .line 919
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aFk(Lcom/android/trajectory/a;)V

    .line 920
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aET(Lcom/android/trajectory/a;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    goto :goto_7

    .line 923
    :pswitch_5a
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aFc(Lcom/android/trajectory/a;I)I

    .line 924
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    iget-object v1, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEQ(Lcom/android/trajectory/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aFw(Lcom/android/trajectory/a;I)V

    .line 925
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 926
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 927
    iget-object v2, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v2}, Lcom/android/trajectory/a;->aEM(Lcom/android/trajectory/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_8c

    .line 928
    iget-object v2, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 929
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 928
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/trajectory/a;->aFb(Lcom/android/trajectory/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 931
    :cond_8c
    iget-object v2, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v2}, Lcom/android/trajectory/a;->aFe(Lcom/android/trajectory/a;)I

    move-result v2

    .line 932
    iget-object v3, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v3}, Lcom/android/trajectory/a;->aEM(Lcom/android/trajectory/a;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 933
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 932
    invoke-static {v0, v3, v4, v5, v2}, Lcom/android/camera/Trajectory/NubiaTrajectory;->RotateBitmapRGBA8888(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)V

    .line 934
    iget-object v2, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v2}, Lcom/android/trajectory/a;->aEO(Lcom/android/trajectory/a;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 935
    iget-object v2, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v2}, Lcom/android/trajectory/a;->aEO(Lcom/android/trajectory/a;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v3}, Lcom/android/trajectory/a;->aEM(Lcom/android/trajectory/a;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 936
    if-eqz v0, :cond_c0

    .line 937
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 940
    :cond_c0
    if-eqz v1, :cond_e1

    .line 941
    const-string/jumbo v0, "TrajectoryFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TRAJECTORY_COMPOSITION_CONFIRM_FINISH ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aFu(Lcom/android/trajectory/a;)V

    .line 944
    :cond_e1
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aFl(Lcom/android/trajectory/a;)V

    goto/16 :goto_7

    .line 947
    :pswitch_e8
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEG(Lcom/android/trajectory/a;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 948
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-virtual {v0}, Lcom/android/trajectory/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "trajectory_1"

    const-string/jumbo v2, "TrajectoryFragment"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEw(Lcom/android/trajectory/a;)Lcom/android/common/appService/W;

    move-result-object v0

    if-eqz v0, :cond_132

    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEw(Lcom/android/trajectory/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 950
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    iget-object v1, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEM(Lcom/android/trajectory/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aFr(Lcom/android/trajectory/a;Landroid/graphics/Bitmap;)V

    .line 951
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aFj(Lcom/android/trajectory/a;)V

    .line 952
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aES(Lcom/android/trajectory/a;)Lcom/android/camera/Trajectory/NubiaTrajectory;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayv(Z)V

    .line 953
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0, v6}, Lcom/android/trajectory/a;->aEZ(Lcom/android/trajectory/a;Z)Z

    .line 954
    return-void

    .line 956
    :cond_132
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEw(Lcom/android/trajectory/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    .line 957
    const/16 v1, 0x13

    .line 956
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 958
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    iget-object v1, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEM(Lcom/android/trajectory/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aFp(Lcom/android/trajectory/a;Landroid/graphics/Bitmap;)V

    .line 959
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aFj(Lcom/android/trajectory/a;)V

    .line 960
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aFn(Lcom/android/trajectory/a;)V

    .line 961
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aFo(Lcom/android/trajectory/a;)V

    .line 962
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aFv(Lcom/android/trajectory/a;)V

    .line 963
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0, v6}, Lcom/android/trajectory/a;->aEZ(Lcom/android/trajectory/a;Z)Z

    goto/16 :goto_7

    .line 966
    :pswitch_167
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aFo(Lcom/android/trajectory/a;)V

    goto/16 :goto_7

    .line 969
    :pswitch_16e
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {}, Lcom/android/trajectory/a;->aEv()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aFa(Lcom/android/trajectory/a;[I)[I

    .line 970
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v0, v2}, Lcom/android/trajectory/a;->aEX(Lcom/android/trajectory/a;Z)Z

    .line 971
    iget-object v0, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    iget-object v1, p0, Lcom/android/trajectory/c;->asT:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEJ(Lcom/android/trajectory/a;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aFh(Lcom/android/trajectory/a;[I)V

    goto/16 :goto_7

    .line 906
    nop

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_3b
        :pswitch_5a
        :pswitch_e8
        :pswitch_167
        :pswitch_16e
    .end packed-switch
.end method
