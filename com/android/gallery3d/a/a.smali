.class public abstract Lcom/android/gallery3d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/h;


# instance fields
.field protected final auB:J

.field protected final auC:J

.field protected final auD:J

.field protected final auE:I

.field protected final auF:D

.field protected final auG:D

.field protected final auH:Ljava/lang/String;

.field protected final auI:Ljava/lang/String;

.field protected final auJ:J

.field protected final auK:Ljava/lang/String;

.field protected auL:Ljava/lang/Boolean;

.field protected final auM:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDD)V
    .registers 21

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/a/a;->auL:Ljava/lang/Boolean;

    .line 84
    iput-wide p1, p0, Lcom/android/gallery3d/a/a;->auB:J

    .line 85
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/gallery3d/a/a;->auK:Ljava/lang/String;

    .line 86
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/gallery3d/a/a;->auH:Ljava/lang/String;

    .line 87
    iput-wide p5, p0, Lcom/android/gallery3d/a/a;->auD:J

    .line 88
    iput-wide p7, p0, Lcom/android/gallery3d/a/a;->auC:J

    .line 89
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/gallery3d/a/a;->auI:Ljava/lang/String;

    .line 90
    iput p10, p0, Lcom/android/gallery3d/a/a;->auM:I

    .line 91
    iput p11, p0, Lcom/android/gallery3d/a/a;->auE:I

    .line 92
    iput-wide p12, p0, Lcom/android/gallery3d/a/a;->auJ:J

    .line 93
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/android/gallery3d/a/a;->auF:D

    .line 94
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/android/gallery3d/a/a;->auG:D

    .line 83
    return-void
.end method


# virtual methods
.method public aHA()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lcom/android/gallery3d/a/a;->auM:I

    return v0
.end method

.method public aHB(I)Z
    .registers 3

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public aHC(I)Z
    .registers 3

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method protected aHD()Z
    .registers 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/gallery3d/a/a;->auL:Ljava/lang/Boolean;

    monitor-enter v1

    .line 214
    :try_start_3
    iget-object v0, p0, Lcom/android/gallery3d/a/a;->auL:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    .line 213
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public aHE()V
    .registers 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/gallery3d/a/a;->auL:Ljava/lang/Boolean;

    monitor-enter v1

    .line 191
    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/a;->auL:Ljava/lang/Boolean;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_c

    monitor-exit v1

    .line 189
    return-void

    .line 190
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public aHF()V
    .registers 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/gallery3d/a/a;->auL:Ljava/lang/Boolean;

    monitor-enter v1

    .line 198
    const/4 v0, 0x0

    :try_start_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/a;->auL:Ljava/lang/Boolean;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_c

    monitor-exit v1

    .line 196
    return-void

    .line 197
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public aHo()Z
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public aHp(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 154
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/gallery3d/a/a;->auI:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method protected aHq(Landroid/content/Context;Landroid/widget/ImageView;IILandroid/graphics/drawable/Drawable;Lcom/android/gallery3d/a/p;)Landroid/widget/ImageView;
    .registers 13

    .prologue
    .line 171
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 172
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p6

    .line 174
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/a/a;->aHr(Landroid/widget/ImageView;IILandroid/content/ContentResolver;Lcom/android/gallery3d/a/p;)Lcom/android/gallery3d/a/f;

    move-result-object v0

    .line 176
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    return-object p2
.end method

.method protected abstract aHr(Landroid/widget/ImageView;IILandroid/content/ContentResolver;Lcom/android/gallery3d/a/p;)Lcom/android/gallery3d/a/f;
.end method

.method public aHs()J
    .registers 3

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/android/gallery3d/a/a;->auC:J

    return-wide v0
.end method

.method public aHt()J
    .registers 3

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/gallery3d/a/a;->auD:J

    return-wide v0
.end method

.method public aHu()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/android/gallery3d/a/a;->auE:I

    return v0
.end method

.method public aHv()I
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public aHw()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/a/a;->auI:Ljava/lang/String;

    return-object v0
.end method

.method public aHx()Ljava/lang/String;
    .registers 3

    .prologue
    .line 114
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/a/a;->auK:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public aHy(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/gallery3d/a/p;)Landroid/view/View;
    .registers 13

    .prologue
    .line 184
    new-instance v2, Lcom/android/gallery3d/ui/o;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/ui/o;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/a/a;->aHq(Landroid/content/Context;Landroid/widget/ImageView;IILandroid/graphics/drawable/Drawable;Lcom/android/gallery3d/a/p;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public abstract aHz()I
.end method
