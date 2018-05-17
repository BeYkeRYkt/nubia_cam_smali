.class public Lcom/android/videomaker/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/videomaker/s;
.implements Lcom/android/videomaker/c;


# instance fields
.field private final aKW:[Ljava/lang/String;

.field private aKX:Landroid/app/Activity;

.field private aKY:Lcom/android/common/appService/W;

.field private aKZ:I

.field private aLA:Ljava/lang/String;

.field private aLB:Ljava/lang/String;

.field private aLC:Landroid/net/Uri;

.field private aLD:Landroid/widget/Button;

.field private aLE:I

.field private aLF:Ljava/lang/String;

.field private aLG:Landroid/widget/ImageButton;

.field private aLH:Lcom/android/videomaker/LooperShowView;

.field private aLI:I

.field private aLJ:Landroid/media/MediaPlayer;

.field private aLK:Landroid/widget/ProgressBar;

.field private aLL:Ljava/util/ArrayList;

.field private aLM:Ljava/lang/String;

.field private aLN:Landroid/view/View;

.field private aLO:Landroid/widget/Button;

.field private aLP:Z

.field private aLQ:I

.field private aLR:Landroid/widget/TextView;

.field private final aLS:Lcom/android/videomaker/h;

.field private aLT:Ljava/util/ArrayList;

.field private aLU:Landroid/widget/Button;

.field private aLV:I

.field private aLW:Landroid/net/Uri;

.field private aLX:I

.field private aLY:Lcom/android/videomaker/ThumbImageListView;

.field private aLZ:Ljava/io/File;

.field private aLa:Landroid/widget/Button;

.field private aLb:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private aLc:Landroid/media/AudioManager;

.field private aLd:I

.field private aLe:Landroid/widget/ImageButton;

.field private aLf:Landroid/content/Context;

.field private aLg:I

.field private aLh:Landroid/widget/ImageButton;

.field private aLi:Landroid/widget/TextView;

.field private aLj:Landroid/widget/RelativeLayout;

.field private aLk:Landroid/widget/ProgressBar;

.field private aLl:Landroid/widget/TextView;

.field private aLm:Landroid/view/animation/Animation;

.field private aLn:Landroid/view/animation/Animation;

.field private aLo:I

.field private aLp:Landroid/os/Handler;

.field private aLq:Landroid/widget/HorizontalScrollView;

.field private aLr:Landroid/widget/ImageView;

.field private aLs:Z

.field private final aLt:Landroid/view/LayoutInflater;

.field private aLu:Z

.field private aLv:Z

.field private aLw:Lcom/android/videomaker/g;

.field private aLx:Landroid/app/ProgressDialog;

.field private aLy:I

.field private aLz:I

.field private aMa:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 126
    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    .line 127
    const-string/jumbo v1, "mime_type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 125
    iput-object v0, p0, Lcom/android/videomaker/f;->aKW:[Ljava/lang/String;

    .line 130
    iput-object v3, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    .line 131
    iput-object v3, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    .line 132
    iput-object v3, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    .line 134
    iput-object v3, p0, Lcom/android/videomaker/f;->aLN:Landroid/view/View;

    .line 138
    iput v4, p0, Lcom/android/videomaker/f;->aLI:I

    .line 153
    iput-boolean v4, p0, Lcom/android/videomaker/f;->aLs:Z

    .line 154
    iput-object v3, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    .line 155
    iput-object v3, p0, Lcom/android/videomaker/f;->aMa:Ljava/lang/String;

    .line 156
    iput-object v3, p0, Lcom/android/videomaker/f;->aLZ:Ljava/io/File;

    .line 157
    iput-boolean v4, p0, Lcom/android/videomaker/f;->aLu:Z

    .line 159
    iput-object v3, p0, Lcom/android/videomaker/f;->aLM:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/f;->aLL:Ljava/util/ArrayList;

    .line 163
    iput-object v3, p0, Lcom/android/videomaker/f;->aLW:Landroid/net/Uri;

    .line 164
    iput-object v3, p0, Lcom/android/videomaker/f;->aLC:Landroid/net/Uri;

    .line 165
    iput-object v3, p0, Lcom/android/videomaker/f;->aLB:Ljava/lang/String;

    .line 166
    iput-object v3, p0, Lcom/android/videomaker/f;->aLA:Ljava/lang/String;

    .line 168
    iput v5, p0, Lcom/android/videomaker/f;->aLg:I

    .line 169
    iput v5, p0, Lcom/android/videomaker/f;->aLX:I

    .line 175
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/videomaker/f;->aKZ:I

    .line 183
    iput-object v3, p0, Lcom/android/videomaker/f;->aLj:Landroid/widget/RelativeLayout;

    .line 188
    iput-object v3, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    .line 189
    iput-boolean v4, p0, Lcom/android/videomaker/f;->aLP:Z

    .line 191
    iput-object v3, p0, Lcom/android/videomaker/f;->aLx:Landroid/app/ProgressDialog;

    .line 192
    new-instance v0, Lcom/android/videomaker/h;

    invoke-direct {v0, p0, v3}, Lcom/android/videomaker/h;-><init>(Lcom/android/videomaker/f;Lcom/android/videomaker/h;)V

    iput-object v0, p0, Lcom/android/videomaker/f;->aLS:Lcom/android/videomaker/h;

    .line 194
    iput-boolean v4, p0, Lcom/android/videomaker/f;->aLv:Z

    .line 371
    new-instance v0, Lcom/android/videomaker/u;

    invoke-direct {v0, p0}, Lcom/android/videomaker/u;-><init>(Lcom/android/videomaker/f;)V

    iput-object v0, p0, Lcom/android/videomaker/f;->aLp:Landroid/os/Handler;

    .line 1349
    new-instance v0, Lcom/android/videomaker/v;

    invoke-direct {v0, p0}, Lcom/android/videomaker/v;-><init>(Lcom/android/videomaker/f;)V

    iput-object v0, p0, Lcom/android/videomaker/f;->aLb:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 199
    iput-object p1, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    .line 200
    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    .line 201
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    .line 202
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/f;->aLt:Landroid/view/LayoutInflater;

    .line 203
    iput-object p2, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    .line 204
    iput-object p3, p0, Lcom/android/videomaker/f;->aMa:Ljava/lang/String;

    .line 198
    return-void
.end method

.method private baA()V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/videomaker/f;->aLN:Landroid/view/View;

    iget-object v1, p0, Lcom/android/videomaker/f;->aLn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 261
    iget-object v0, p0, Lcom/android/videomaker/f;->aLN:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    return-void
.end method

.method private baB(IIZ)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/16 v3, 0x258

    const/4 v0, 0x0

    .line 542
    iget-object v1, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3c

    iget-object v1, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 543
    if-eqz p3, :cond_3d

    .line 544
    iget-object v0, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2, v3}, Lcom/android/videomaker/t;->bea(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 546
    if-nez v0, :cond_3c

    if-nez p1, :cond_3c

    iget-object v1, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3c

    .line 547
    iget-object v0, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2, v3}, Lcom/android/videomaker/t;->bea(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 555
    :cond_3c
    :goto_3c
    return-object v0

    .line 551
    :cond_3d
    iget-object v0, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    const/16 v1, 0xc8

    .line 551
    invoke-static {v0, p2, v1}, Lcom/android/videomaker/t;->bea(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3c
.end method

.method private baC(II)J
    .registers 7

    .prologue
    .line 1084
    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    int-to-long v2, p1

    div-long/2addr v0, v2

    .line 1085
    return-wide v0
.end method

.method private baD(II)Ljava/lang/String;
    .registers 6

    .prologue
    .line 1079
    invoke-direct {p0, p1, p2}, Lcom/android/videomaker/f;->baC(II)J

    move-result-wide v0

    .line 1080
    iget-object v2, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/videomaker/a/c;->aYo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private baE()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 529
    :goto_2
    iget-object v2, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    invoke-virtual {v2}, Lcom/android/videomaker/ThumbImageListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 530
    iget-object v2, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    invoke-virtual {v2, v0}, Lcom/android/videomaker/ThumbImageListView;->getItem(I)Lcom/android/videomaker/a;

    move-result-object v2

    .line 531
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/android/videomaker/a;->aZV()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 536
    :goto_18
    return v0

    .line 529
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1c
    move v0, v1

    goto :goto_18
.end method

.method private baF(Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 937
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 938
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 939
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 940
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 941
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 958
    :cond_24
    :goto_24
    return-object v6

    .line 943
    :cond_25
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 946
    :try_start_2b
    iget-object v2, p0, Lcom/android/videomaker/f;->aKW:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_4e
    .catchall {:try_start_2b .. :try_end_34} :catchall_59

    move-result-object v1

    .line 947
    if-eqz v1, :cond_48

    :try_start_37
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 948
    const-string/jumbo v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_47} :catch_63
    .catchall {:try_start_37 .. :try_end_47} :catchall_61

    move-result-object v6

    .line 953
    :cond_48
    if-eqz v1, :cond_24

    .line 954
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_24

    .line 950
    :catch_4e
    move-exception v0

    move-object v1, v6

    .line 951
    :goto_50
    :try_start_50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_61

    .line 953
    if-eqz v1, :cond_24

    .line 954
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_24

    .line 952
    :catchall_59
    move-exception v0

    move-object v1, v6

    .line 953
    :goto_5b
    if-eqz v1, :cond_60

    .line 954
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 952
    :cond_60
    throw v0

    :catchall_61
    move-exception v0

    goto :goto_5b

    .line 950
    :catch_63
    move-exception v0

    goto :goto_50
.end method

.method private baG(Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 962
    const-string/jumbo v0, "getMusicType"

    invoke-static {v0}, Lcom/android/videomaker/f;->baV(Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 967
    :try_start_d
    iget-object v2, p0, Lcom/android/videomaker/f;->aKW:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_47
    .catchall {:try_start_d .. :try_end_16} :catchall_52

    move-result-object v1

    .line 968
    if-eqz v1, :cond_41

    :try_start_19
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 969
    const-string/jumbo v0, "mime_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videomaker/f;->baV(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_41} :catch_5c
    .catchall {:try_start_19 .. :try_end_41} :catchall_5a

    .line 975
    :cond_41
    if-eqz v1, :cond_46

    .line 976
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 979
    :cond_46
    :goto_46
    return-object v6

    .line 972
    :catch_47
    move-exception v0

    move-object v1, v6

    .line 973
    :goto_49
    :try_start_49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5a

    .line 975
    if-eqz v1, :cond_46

    .line 976
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_46

    .line 974
    :catchall_52
    move-exception v0

    move-object v1, v6

    .line 975
    :goto_54
    if-eqz v1, :cond_59

    .line 976
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 974
    :cond_59
    throw v0

    :catchall_5a
    move-exception v0

    goto :goto_54

    .line 972
    :catch_5c
    move-exception v0

    goto :goto_49
.end method

.method private baH()Ljava/util/ArrayList;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 592
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 594
    iget-object v2, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    invoke-virtual {v2}, Lcom/android/videomaker/ThumbImageListView;->getCount()I

    move-result v2

    .line 595
    iget v3, p0, Lcom/android/videomaker/f;->aLE:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b

    .line 596
    :goto_11
    if-ge v0, v2, :cond_47

    .line 597
    iget-object v3, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    invoke-virtual {v3, v0}, Lcom/android/videomaker/ThumbImageListView;->getItem(I)Lcom/android/videomaker/a;

    move-result-object v3

    .line 598
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lcom/android/videomaker/a;->aZV()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 599
    invoke-virtual {v3}, Lcom/android/videomaker/a;->aZW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 603
    :cond_2b
    add-int/lit8 v0, v2, -0x1

    :goto_2d
    if-ltz v0, :cond_47

    .line 604
    iget-object v2, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    invoke-virtual {v2, v0}, Lcom/android/videomaker/ThumbImageListView;->getItem(I)Lcom/android/videomaker/a;

    move-result-object v2

    .line 605
    if-eqz v2, :cond_44

    invoke-virtual {v2}, Lcom/android/videomaker/a;->aZV()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 606
    invoke-virtual {v2}, Lcom/android/videomaker/a;->aZW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 610
    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/videomaker/f;->aLQ:I

    .line 611
    return-object v1
.end method

.method private baI()I
    .registers 2

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qj()I

    move-result v0

    return v0
.end method

.method private static baJ(I)I
    .registers 2

    .prologue
    const v0, 0x1e8480

    .line 1107
    packed-switch p0, :pswitch_data_10

    .line 1121
    return v0

    .line 1109
    :pswitch_7
    const v0, 0x7d000

    return v0

    .line 1113
    :pswitch_b
    return v0

    .line 1117
    :pswitch_c
    const v0, 0x7a1200

    return v0

    .line 1107
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private baK()I
    .registers 3

    .prologue
    .line 1103
    sget-object v0, Lcom/android/videomaker/b/a;->aJu:[Landroid/util/Pair;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private baM()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 270
    iput v2, p0, Lcom/android/videomaker/f;->mState:I

    .line 271
    iput v1, p0, Lcom/android/videomaker/f;->aLd:I

    .line 272
    iput v2, p0, Lcom/android/videomaker/f;->aLE:I

    .line 273
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/videomaker/f;->aLV:I

    .line 274
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/videomaker/f;->aLo:I

    .line 275
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/videomaker/f;->aKZ:I

    .line 276
    iput-boolean v1, p0, Lcom/android/videomaker/f;->aLP:Z

    .line 277
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/videomaker/f;->aMa:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/videomaker/f;->aLZ:Ljava/io/File;

    .line 279
    invoke-direct {p0}, Lcom/android/videomaker/f;->baK()I

    move-result v0

    iput v0, p0, Lcom/android/videomaker/f;->aLz:I

    .line 280
    invoke-static {v2}, Lcom/android/videomaker/f;->baJ(I)I

    move-result v0

    iput v0, p0, Lcom/android/videomaker/f;->aLy:I

    .line 283
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/videomaker/a/a;->aYj(Landroid/content/Context;)V

    .line 284
    const/16 v0, 0x12c

    invoke-static {v0}, Lcom/android/videomaker/a/a;->aYi(I)I

    move-result v0

    iput v0, p0, Lcom/android/videomaker/f;->aLI:I

    .line 285
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    instance-of v0, v0, Lcom/android/common/custom/F;

    if-eqz v0, :cond_49

    .line 286
    const/16 v0, 0x1c2

    invoke-static {v0}, Lcom/android/videomaker/a/a;->aYi(I)I

    move-result v0

    iput v0, p0, Lcom/android/videomaker/f;->aLI:I

    .line 289
    :cond_49
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Lcom/android/videomaker/a/d;->aYq(J)V

    .line 290
    iget-object v0, p0, Lcom/android/videomaker/f;->aLS:Lcom/android/videomaker/h;

    invoke-static {v0}, Lcom/android/videomaker/service/MakerService;->aZc(Lcom/android/videomaker/service/c;)V

    .line 291
    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videomaker/service/MakerService;->aZd(Landroid/location/Location;)V

    .line 292
    invoke-direct {p0}, Lcom/android/videomaker/f;->baw()V

    .line 269
    return-void
.end method

.method private baN()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 296
    iget-object v0, p0, Lcom/android/videomaker/f;->aLN:Landroid/view/View;

    if-eqz v0, :cond_9

    return-void

    .line 297
    :cond_9
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 299
    const v1, 0x7f100200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLj:Landroid/widget/RelativeLayout;

    .line 301
    const v1, 0x7f1001ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videomaker/f;->aLN:Landroid/view/View;

    .line 303
    const v1, 0x7f1000ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLr:Landroid/widget/ImageView;

    .line 304
    iget-object v1, p0, Lcom/android/videomaker/f;->aLr:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v5, v4}, Lcom/android/videomaker/f;->baB(IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 306
    const v1, 0x7f1001f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/videomaker/LooperShowView;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLH:Lcom/android/videomaker/LooperShowView;

    .line 308
    const v1, 0x7f1001f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLG:Landroid/widget/ImageButton;

    .line 309
    iget-object v1, p0, Lcom/android/videomaker/f;->aLG:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v1, 0x7f1001f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLq:Landroid/widget/HorizontalScrollView;

    .line 312
    const v1, 0x7f1001f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/videomaker/ThumbImageListView;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    .line 313
    iget-object v1, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    invoke-virtual {v1, p0}, Lcom/android/videomaker/ThumbImageListView;->bdR(Lcom/android/videomaker/s;)V

    .line 314
    invoke-direct {p0}, Lcom/android/videomaker/f;->baW()V

    .line 316
    const v1, 0x7f1001f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLR:Landroid/widget/TextView;

    .line 317
    iget-object v1, p0, Lcom/android/videomaker/f;->aLR:Landroid/widget/TextView;

    .line 318
    iget-object v2, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0346

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    new-array v3, v4, [Ljava/lang/Object;

    .line 318
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 317
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    const v1, 0x7f1001f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLi:Landroid/widget/TextView;

    .line 321
    const v1, 0x7f1001f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLa:Landroid/widget/Button;

    .line 322
    const v1, 0x7f1001fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLO:Landroid/widget/Button;

    .line 323
    const v1, 0x7f1001fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLD:Landroid/widget/Button;

    .line 324
    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLU:Landroid/widget/Button;

    .line 325
    const v1, 0x7f100107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLe:Landroid/widget/ImageButton;

    .line 326
    const v1, 0x7f1001ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/videomaker/f;->aLh:Landroid/widget/ImageButton;

    .line 328
    invoke-virtual {p0}, Lcom/android/videomaker/f;->baL()V

    .line 330
    iget-object v1, p0, Lcom/android/videomaker/f;->aLa:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v1, p0, Lcom/android/videomaker/f;->aLO:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v1, p0, Lcom/android/videomaker/f;->aLD:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v1, p0, Lcom/android/videomaker/f;->aLU:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v1, p0, Lcom/android/videomaker/f;->aLe:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v1, p0, Lcom/android/videomaker/f;->aLh:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    const v1, 0x7f1001fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/videomaker/f;->aLK:Landroid/widget/ProgressBar;

    .line 339
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/f;->aLm:Landroid/view/animation/Animation;

    .line 340
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/f;->aLn:Landroid/view/animation/Animation;

    .line 341
    iget-object v0, p0, Lcom/android/videomaker/f;->aLm:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 342
    iget-object v0, p0, Lcom/android/videomaker/f;->aLn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 295
    return-void
.end method

.method private baP()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 708
    iget v2, p0, Lcom/android/videomaker/f;->mState:I

    const/4 v3, 0x2

    if-eq v3, v2, :cond_15

    iget-object v2, p0, Lcom/android/videomaker/f;->aLx:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_15

    .line 709
    invoke-static {}, Lcom/android/videomaker/service/MakerService;->aZk()I

    move-result v2

    if-eqz v2, :cond_16

    .line 710
    :cond_15
    :goto_15
    return v0

    :cond_16
    move v0, v1

    .line 709
    goto :goto_15
.end method

.method private baQ(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 906
    if-eqz p1, :cond_27

    .line 907
    const-string/jumbo v0, ".m4a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string/jumbo v0, ".aac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 908
    const-string/jumbo v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 907
    if-nez v0, :cond_25

    .line 908
    const-string/jumbo v0, ".amr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 907
    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x1

    goto :goto_24

    .line 910
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method private baR(Landroid/net/Uri;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSupportMusicUri, uri = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videomaker/f;->baV(Ljava/lang/String;)V

    .line 882
    const/4 v0, 0x1

    .line 883
    invoke-direct {p0, p1}, Lcom/android/videomaker/f;->baG(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 884
    const-string/jumbo v3, "audio/mpeg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string/jumbo v3, "audio/mp4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string/jumbo v3, "audio/amr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string/jumbo v3, "audio/aac"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 885
    :cond_41
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 886
    if-nez v2, :cond_49

    return v1

    .line 889
    :cond_49
    :try_start_49
    iget-object v3, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 890
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_51} :catch_55
    .catchall {:try_start_49 .. :try_end_51} :catchall_78

    .line 896
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 902
    :goto_54
    return v0

    .line 891
    :catch_55
    move-exception v0

    .line 892
    :try_start_56
    const-string/jumbo v3, "VideoMakerPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_56 .. :try_end_73} :catchall_78

    .line 896
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    move v0, v1

    goto :goto_54

    .line 895
    :catchall_78
    move-exception v0

    .line 896
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 895
    throw v0

    :cond_7d
    move v0, v1

    .line 900
    goto :goto_54
.end method

.method private baS(Ljava/util/ArrayList;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 816
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private baT()Z
    .registers 7

    .prologue
    .line 1089
    const/4 v0, 0x0

    .line 1090
    iget-object v1, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    if-eqz v1, :cond_18

    .line 1091
    iget-object v1, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    invoke-virtual {v1}, Lcom/android/videomaker/ThumbImageListView;->bdU()I

    move-result v1

    .line 1092
    iget v2, p0, Lcom/android/videomaker/f;->aLo:I

    invoke-direct {p0, v2, v1}, Lcom/android/videomaker/f;->baC(II)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-ltz v1, :cond_18

    .line 1093
    const/4 v0, 0x1

    .line 1097
    :cond_18
    return v0
.end method

.method private static baV(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1127
    const-string/jumbo v0, "VideoMakerPage"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1128
    const-string/jumbo v0, "VideoMakerPage"

    invoke-static {v0, p0}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :cond_10
    return-void
.end method

.method private baW()V
    .registers 5

    .prologue
    const/16 v3, 0x102

    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/videomaker/a/a;->aYj(Landroid/content/Context;)V

    .line 347
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/android/videomaker/a/a;->aYi(I)I

    move-result v0

    .line 348
    iget-object v1, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    invoke-virtual {v1, v0}, Lcom/android/videomaker/ThumbImageListView;->bdS(I)V

    .line 350
    iput v2, p0, Lcom/android/videomaker/f;->aLg:I

    .line 351
    iput v2, p0, Lcom/android/videomaker/f;->aLX:I

    .line 352
    iget-object v0, p0, Lcom/android/videomaker/f;->aLp:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    iget-object v0, p0, Lcom/android/videomaker/f;->aLp:Landroid/os/Handler;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object v0, p0, Lcom/android/videomaker/f;->aLp:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    return-void
.end method

.method private baX()V
    .registers 3

    .prologue
    .line 442
    iget v0, p0, Lcom/android/videomaker/f;->aLg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/videomaker/f;->aLg:I

    .line 444
    iget v0, p0, Lcom/android/videomaker/f;->aLg:I

    iget-object v1, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 445
    iget-object v0, p0, Lcom/android/videomaker/f;->aLp:Landroid/os/Handler;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 450
    :goto_17
    return-void

    .line 447
    :cond_18
    const-string/jumbo v0, "VideoMakerPage"

    const-string/jumbo v1, "0716, onAddItemFinished"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-direct {p0}, Lcom/android/videomaker/f;->baZ()V

    goto :goto_17
.end method

.method private baY()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 423
    iget v0, p0, Lcom/android/videomaker/f;->aLg:I

    iget-object v1, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_d

    .line 424
    return-void

    .line 426
    :cond_d
    iget v0, p0, Lcom/android/videomaker/f;->aLg:I

    invoke-direct {p0, v0, v2, v2}, Lcom/android/videomaker/f;->baB(IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 427
    if-nez v1, :cond_1f

    .line 428
    const-string/jumbo v0, "VideoMakerPage"

    const-string/jumbo v1, "onAddItem, bitmap == null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void

    .line 431
    :cond_1f
    new-instance v2, Lcom/android/videomaker/a;

    iget v3, p0, Lcom/android/videomaker/f;->aLX:I

    iget-object v0, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/videomaker/f;->aLg:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/android/videomaker/a;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    iget v1, p0, Lcom/android/videomaker/f;->aLX:I

    invoke-virtual {v0, v2, v1}, Lcom/android/videomaker/ThumbImageListView;->bdT(Lcom/android/videomaker/a;I)V

    .line 434
    iget v0, p0, Lcom/android/videomaker/f;->aLX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/videomaker/f;->aLX:I

    .line 436
    invoke-virtual {p0}, Lcom/android/videomaker/f;->bbk()V

    .line 438
    return-void
.end method

.method private baZ()V
    .registers 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/videomaker/f;->aLp:Landroid/os/Handler;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 455
    return-void
.end method

.method private bao(Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 1267
    const-wide/16 v2, 0x1e

    .line 1268
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a033c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1269
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1270
    const-string/jumbo v4, "audio/*"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    iget-object v4, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1272
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9a

    .line 1273
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_37
    :goto_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1275
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.GET_CONTENT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1276
    const-string/jumbo v7, "audio/*"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1277
    const-string/jumbo v7, "android.intent.extra.durationLimit"

    invoke-virtual {v6, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1278
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1280
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 1281
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 1280
    if-nez v7, :cond_37

    .line 1284
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1285
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 1288
    :cond_72
    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 1289
    if-nez v1, :cond_7f

    .line 1290
    return-void

    .line 1294
    :cond_7f
    :try_start_7f
    const-string/jumbo v2, "android.intent.extra.INITIAL_INTENTS"

    .line 1295
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/Parcelable;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 1294
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1296
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1298
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    .line 1299
    const/16 v2, 0x3e9

    .line 1298
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_9a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7f .. :try_end_9a} :catch_9b

    .line 1266
    :cond_9a
    :goto_9a
    return-void

    .line 1300
    :catch_9b
    move-exception v0

    .line 1301
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    const-string/jumbo v1, "Can\'t find component to select music"

    .line 1302
    const/4 v2, 0x1

    .line 1301
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9a
.end method

.method private bap(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addAudioTrackNoUri, filename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videomaker/f;->baV(Ljava/lang/String;)V

    .line 984
    if-nez p1, :cond_1b

    .line 985
    return-void

    .line 987
    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/videomaker/f;->baQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 988
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file.length() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/videomaker/f;->baV(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5c

    .line 992
    const-string/jumbo v0, "file exists, addAudioTrackNoUri"

    invoke-static {v0}, Lcom/android/videomaker/f;->baV(Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    invoke-static {v0, p1, v4}, Lcom/android/videomaker/service/MakerService;->aZn(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 982
    :cond_5c
    :goto_5c
    return-void

    .line 996
    :cond_5d
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    const v1, 0x7f0a0350

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 998
    iget-object v0, p0, Lcom/android/videomaker/f;->aLB:Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/videomaker/f;->aLC:Landroid/net/Uri;

    if-eqz v0, :cond_5c

    .line 999
    iget-object v0, p0, Lcom/android/videomaker/f;->aLC:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/videomaker/f;->aLW:Landroid/net/Uri;

    .line 1000
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/videomaker/f;->aLC:Landroid/net/Uri;

    invoke-static {v0, v1, v4}, Lcom/android/videomaker/service/MakerService;->aZm(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_5c
.end method

.method private baq(Ljava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/videomaker/service/MakerService;->aZo(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 1005
    return-void
.end method

.method private bas()V
    .registers 5

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/videomaker/f;->baH()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 587
    iget v1, p0, Lcom/android/videomaker/f;->aLQ:I

    if-nez v1, :cond_17

    return-void

    .line 588
    :cond_17
    iget-object v1, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    invoke-static {}, Lcom/android/videomaker/a/d;->aYr()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/android/videomaker/service/MakerService;->aZh(Landroid/content/Context;[Ljava/lang/String;J)V

    .line 582
    return-void
.end method

.method private bat()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cancelExport, mIsStartEncoding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/videomaker/f;->aLv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videomaker/f;->baV(Ljava/lang/String;)V

    .line 867
    invoke-static {v2}, Lcom/android/videomaker/service/MakerService;->aZj(Z)V

    .line 868
    iget-boolean v0, p0, Lcom/android/videomaker/f;->aLv:Z

    if-eqz v0, :cond_29

    .line 870
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/videomaker/f;->aLF:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/videomaker/service/MakerService;->aZl(Landroid/content/Context;Ljava/lang/String;)V

    .line 875
    :cond_29
    iput-object v3, p0, Lcom/android/videomaker/f;->aLF:Ljava/lang/String;

    .line 876
    iget-object v0, p0, Lcom/android/videomaker/f;->aLj:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/videomaker/f;->aLj:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 877
    :cond_36
    iput v2, p0, Lcom/android/videomaker/f;->mState:I

    .line 865
    return-void
.end method

.method private bav()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 517
    iget-object v0, p0, Lcom/android/videomaker/f;->aLL:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 518
    iget-object v0, p0, Lcom/android/videomaker/f;->aLL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 519
    iput-object v1, p0, Lcom/android/videomaker/f;->aLL:Ljava/util/ArrayList;

    .line 516
    :cond_c
    return-void
.end method

.method private baw()V
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/videomaker/service/MakerService;->aZg(Landroid/content/Context;)V

    .line 571
    return-void
.end method

.method private baz()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/videomaker/f;->aLN:Landroid/view/View;

    iget-object v1, p0, Lcom/android/videomaker/f;->aLm:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 266
    iget-object v0, p0, Lcom/android/videomaker/f;->aLN:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    return-void
.end method

.method private bbA(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    .prologue
    .line 1308
    const-string/jumbo v0, "updateThumbnail"

    invoke-static {v0}, Lcom/android/videomaker/f;->baV(Ljava/lang/String;)V

    .line 1309
    if-eqz p1, :cond_a

    if-nez p2, :cond_b

    .line 1311
    :cond_a
    return-void

    .line 1310
    :cond_b
    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1313
    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v0, p2}, Lcom/android/common/appService/W;->qi(Landroid/net/Uri;)Z

    .line 1316
    invoke-direct {p0}, Lcom/android/videomaker/f;->baI()I

    move-result v0

    .line 1315
    invoke-static {p1, v0}, Lcom/android/common/m/a;->agR(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1317
    if-eqz v0, :cond_2c

    .line 1318
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/android/common/m/a;->agS(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/common/m/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/videomaker/f;->bbu(Lcom/android/common/m/a;)V

    .line 1319
    sput-object p2, Lcom/android/common/f;->agP:Landroid/net/Uri;

    .line 1321
    :cond_2c
    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1322
    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/m/c;->ahi()V

    .line 1307
    :cond_3d
    return-void
.end method

.method static synthetic bbB(Lcom/android/videomaker/f;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic bbC(Lcom/android/videomaker/f;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic bbD(Lcom/android/videomaker/f;)I
    .registers 2

    iget v0, p0, Lcom/android/videomaker/f;->aLo:I

    return v0
.end method

.method static synthetic bbE(Lcom/android/videomaker/f;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/f;->aLp:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic bbF(Lcom/android/videomaker/f;)Lcom/android/videomaker/g;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/f;->aLw:Lcom/android/videomaker/g;

    return-object v0
.end method

.method static synthetic bbG(Lcom/android/videomaker/f;)I
    .registers 2

    iget v0, p0, Lcom/android/videomaker/f;->aLy:I

    return v0
.end method

.method static synthetic bbH(Lcom/android/videomaker/f;)I
    .registers 2

    iget v0, p0, Lcom/android/videomaker/f;->aLz:I

    return v0
.end method

.method static synthetic bbI(Lcom/android/videomaker/f;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/f;->aLA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bbJ(Lcom/android/videomaker/f;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/f;->aLC:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic bbK(Lcom/android/videomaker/f;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/f;->aLF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bbL(Lcom/android/videomaker/f;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/f;->aLL:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic bbM(Lcom/android/videomaker/f;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/f;->aLO:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic bbN(Lcom/android/videomaker/f;)I
    .registers 2

    iget v0, p0, Lcom/android/videomaker/f;->aLQ:I

    return v0
.end method

.method static synthetic bbO(Lcom/android/videomaker/f;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/f;->aLW:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic bbP(Lcom/android/videomaker/f;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/videomaker/f;->aLv:Z

    return p1
.end method

.method static synthetic bbQ(Lcom/android/videomaker/f;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/videomaker/f;->aLx:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic bbR(Lcom/android/videomaker/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/videomaker/f;->aLB:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic bbS(Lcom/android/videomaker/f;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    iput-object p1, p0, Lcom/android/videomaker/f;->aLC:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic bbT(Lcom/android/videomaker/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/videomaker/f;->aLF:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic bbU(Lcom/android/videomaker/f;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/videomaker/f;->aLP:Z

    return p1
.end method

.method static synthetic bbV(Lcom/android/videomaker/f;Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/videomaker/f;->baF(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bbW(Lcom/android/videomaker/f;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/videomaker/f;->baq(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic bbX(Lcom/android/videomaker/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/videomaker/f;->bat()V

    return-void
.end method

.method static synthetic bbY(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/videomaker/f;->baV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic bbZ(Lcom/android/videomaker/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/videomaker/f;->baX()V

    return-void
.end method

.method private bbd()V
    .registers 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/videomaker/f;->aLL:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/videomaker/f;->baS(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 776
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/videomaker/f;->bbh(I)V

    .line 774
    :cond_c
    return-void
.end method

.method private bbe(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/videomaker/w;

    invoke-direct {v1, p0, p2}, Lcom/android/videomaker/w;-><init>(Lcom/android/videomaker/f;I)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 794
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/videomaker/f;->bbf(Z)V

    .line 780
    return-void
.end method

.method private bbf(Z)V
    .registers 3

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 821
    iget-object v0, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 822
    iget-object v0, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 819
    return-void
.end method

.method private bbg(I)V
    .registers 4

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/videomaker/f;->aLL:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/videomaker/f;->baS(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 799
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/android/videomaker/f;->aLL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 800
    iget-object v1, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 801
    invoke-direct {p0, v0}, Lcom/android/videomaker/f;->bbh(I)V

    .line 797
    :cond_1a
    :goto_1a
    return-void

    .line 803
    :cond_1b
    const/4 v0, 0x0

    .line 804
    iget-object v1, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 805
    invoke-direct {p0, v0}, Lcom/android/videomaker/f;->bbh(I)V

    goto :goto_1a
.end method

.method private bbh(I)V
    .registers 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/videomaker/f;->aLL:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 812
    invoke-direct {p0, v0, p1}, Lcom/android/videomaker/f;->bbe(Ljava/lang/String;I)V

    .line 810
    return-void
.end method

.method private bbi()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 751
    iget v0, p0, Lcom/android/videomaker/f;->aLd:I

    if-ne v0, v1, :cond_6

    return-void

    .line 752
    :cond_6
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    .line 753
    iget-object v0, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    if-nez v0, :cond_12

    return-void

    .line 756
    :cond_12
    :try_start_12
    iget v0, p0, Lcom/android/videomaker/f;->aLd:I

    if-nez v0, :cond_34

    .line 757
    iget-object v0, p0, Lcom/android/videomaker/f;->aLL:Ljava/util/ArrayList;

    if-nez v0, :cond_1b

    return-void

    .line 758
    :cond_1b
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/videomaker/f;->aLL:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_30

    return-void

    .line 760
    :cond_30
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbd()V

    .line 750
    :goto_33
    return-void

    .line 761
    :cond_34
    iget v0, p0, Lcom/android/videomaker/f;->aLd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6a

    iget-boolean v0, p0, Lcom/android/videomaker/f;->aLP:Z

    if-eqz v0, :cond_6a

    .line 762
    iget-object v0, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/videomaker/f;->aLC:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 763
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/videomaker/f;->bbf(Z)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4a} :catch_4b

    goto :goto_33

    .line 768
    :catch_4b
    move-exception v0

    .line 769
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 770
    const-string/jumbo v1, "VideoMakerPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 765
    :cond_6a
    :try_start_6a
    const-string/jumbo v0, "VideoMakerPage"

    const-string/jumbo v1, "wrong audio state!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_73} :catch_4b

    .line 766
    return-void
.end method

.method private bbj()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 715
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbn()V

    .line 716
    iget-object v0, p0, Lcom/android/videomaker/f;->aLH:Lcom/android/videomaker/LooperShowView;

    iget v1, p0, Lcom/android/videomaker/f;->aLE:I

    iget v2, p0, Lcom/android/videomaker/f;->aLo:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    div-long v2, v4, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videomaker/LooperShowView;->bdK(IJ)V

    .line 717
    iget-object v0, p0, Lcom/android/videomaker/f;->aLr:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/android/videomaker/f;->aLH:Lcom/android/videomaker/LooperShowView;

    invoke-virtual {v0, v6}, Lcom/android/videomaker/LooperShowView;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/android/videomaker/f;->aLG:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 721
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbm()V

    .line 722
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbi()V

    .line 723
    iput v6, p0, Lcom/android/videomaker/f;->mState:I

    .line 714
    return-void
.end method

.method private bbm()V
    .registers 5

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/videomaker/f;->aLc:Landroid/media/AudioManager;

    if-nez v0, :cond_11

    .line 1336
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/videomaker/f;->aLc:Landroid/media/AudioManager;

    .line 1338
    :cond_11
    iget-object v0, p0, Lcom/android/videomaker/f;->aLc:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/videomaker/f;->aLb:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    .line 1339
    const/4 v3, 0x1

    .line 1338
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1334
    return-void
.end method

.method private bbn()V
    .registers 5

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/videomaker/f;->aLH:Lcom/android/videomaker/LooperShowView;

    invoke-direct {p0}, Lcom/android/videomaker/f;->baH()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/videomaker/f;->aLI:I

    iget v3, p0, Lcom/android/videomaker/f;->aLI:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videomaker/LooperShowView;->bdL(Ljava/util/ArrayList;II)V

    .line 745
    iget-object v0, p0, Lcom/android/videomaker/f;->aLH:Lcom/android/videomaker/LooperShowView;

    invoke-virtual {v0}, Lcom/android/videomaker/LooperShowView;->bdM()Lcom/android/videomaker/b;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 746
    iget-object v0, p0, Lcom/android/videomaker/f;->aLH:Lcom/android/videomaker/LooperShowView;

    invoke-virtual {v0}, Lcom/android/videomaker/LooperShowView;->bdM()Lcom/android/videomaker/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/videomaker/b;->bab(Lcom/android/videomaker/c;)V

    .line 743
    :cond_1e
    return-void
.end method

.method private bbo()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1010
    iget v1, p0, Lcom/android/videomaker/f;->aLd:I

    if-nez v1, :cond_22

    .line 1011
    iget-object v1, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/videomaker/service/MakerService;->aZp(Landroid/content/Context;Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a033a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1014
    const/16 v1, 0x8

    .line 1012
    invoke-direct {p0, v3, v0, v1}, Lcom/android/videomaker/f;->bbz(ILjava/lang/String;I)V

    .line 1009
    :cond_21
    :goto_21
    return-void

    .line 1015
    :cond_22
    iget v1, p0, Lcom/android/videomaker/f;->aLd:I

    if-ne v1, v3, :cond_4d

    .line 1016
    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1017
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbs()V

    goto :goto_21

    .line 1019
    :cond_3a
    iput-boolean v2, p0, Lcom/android/videomaker/f;->aLP:Z

    .line 1021
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a033b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1020
    invoke-direct {p0, v4, v0, v2}, Lcom/android/videomaker/f;->bbz(ILjava/lang/String;I)V

    goto :goto_21

    .line 1024
    :cond_4d
    iget v1, p0, Lcom/android/videomaker/f;->aLd:I

    if-ne v1, v4, :cond_21

    .line 1025
    iget-object v1, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/videomaker/f;->aLC:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/videomaker/service/MakerService;->aZi(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1026
    iput-object v0, p0, Lcom/android/videomaker/f;->aLB:Ljava/lang/String;

    .line 1027
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbs()V

    goto :goto_21
.end method

.method private bbr()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1046
    iget v0, p0, Lcom/android/videomaker/f;->aLE:I

    if-ne v0, v1, :cond_1b

    .line 1047
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/videomaker/f;->aLE:I

    .line 1048
    iget-object v0, p0, Lcom/android/videomaker/f;->aLD:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a033f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    :goto_1a
    return-void

    .line 1050
    :cond_1b
    iput v1, p0, Lcom/android/videomaker/f;->aLE:I

    .line 1051
    iget-object v0, p0, Lcom/android/videomaker/f;->aLD:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a033e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method

.method private bbs()V
    .registers 4

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/videomaker/f;->aLL:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/videomaker/f;->baq(Ljava/util/ArrayList;)V

    .line 1034
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0339

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1033
    const/4 v1, 0x0

    .line 1035
    const/16 v2, 0x8

    .line 1033
    invoke-direct {p0, v1, v0, v2}, Lcom/android/videomaker/f;->bbz(ILjava/lang/String;I)V

    .line 1031
    return-void
.end method

.method private bbt()V
    .registers 6

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1057
    iget v0, p0, Lcom/android/videomaker/f;->aLV:I

    if-ne v0, v2, :cond_6e

    .line 1058
    iput v1, p0, Lcom/android/videomaker/f;->aLV:I

    .line 1059
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/videomaker/f;->aLo:I

    .line 1060
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0341

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1070
    :goto_1a
    iget-object v1, p0, Lcom/android/videomaker/f;->aLU:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0347

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1073
    iget-object v1, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1074
    iget-object v2, p0, Lcom/android/videomaker/f;->aLi:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/videomaker/f;->aLo:I

    .line 1075
    iget-object v4, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    invoke-virtual {v4}, Lcom/android/videomaker/ThumbImageListView;->bdU()I

    move-result v4

    .line 1074
    invoke-direct {p0, v3, v4}, Lcom/android/videomaker/f;->baD(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1075
    const-string/jumbo v3, " "

    .line 1074
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    return-void

    .line 1061
    :cond_6e
    iget v0, p0, Lcom/android/videomaker/f;->aLV:I

    if-ne v0, v1, :cond_84

    .line 1062
    iput v3, p0, Lcom/android/videomaker/f;->aLV:I

    .line 1063
    iput v3, p0, Lcom/android/videomaker/f;->aLo:I

    .line 1064
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0343

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 1066
    :cond_84
    iput v2, p0, Lcom/android/videomaker/f;->aLV:I

    .line 1067
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/videomaker/f;->aLo:I

    .line 1068
    iget-object v0, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0342

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method private bbu(Lcom/android/common/m/a;)V
    .registers 3

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/m/c;->ahj(Lcom/android/common/m/a;)V

    .line 1330
    return-void
.end method

.method private bbv()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 833
    iget-object v0, p0, Lcom/android/videomaker/f;->aLj:Landroid/widget/RelativeLayout;

    const v1, 0x7f100205

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/videomaker/f;->aLk:Landroid/widget/ProgressBar;

    .line 834
    iget-object v0, p0, Lcom/android/videomaker/f;->aLk:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/videomaker/f;->aLQ:I

    add-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 835
    iget-object v0, p0, Lcom/android/videomaker/f;->aLk:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 836
    iget-object v0, p0, Lcom/android/videomaker/f;->aLj:Landroid/widget/RelativeLayout;

    const v1, 0x7f100203

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/videomaker/f;->aLl:Landroid/widget/TextView;

    .line 837
    iget-object v0, p0, Lcom/android/videomaker/f;->aLl:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0a0344

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-object v0, p0, Lcom/android/videomaker/f;->aLj:Landroid/widget/RelativeLayout;

    const v1, 0x7f100201

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 839
    new-instance v1, Lcom/android/videomaker/x;

    invoke-direct {v1, p0}, Lcom/android/videomaker/x;-><init>(Lcom/android/videomaker/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    iget-object v0, p0, Lcom/android/videomaker/f;->aLj:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 832
    return-void
.end method

.method private bbw()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 826
    iget-object v0, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    .line 827
    iget-object v0, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 828
    iput-object v1, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    .line 825
    :cond_c
    return-void
.end method

.method private bby()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1343
    iget-object v0, p0, Lcom/android/videomaker/f;->aLc:Landroid/media/AudioManager;

    if-eqz v0, :cond_e

    .line 1344
    iget-object v0, p0, Lcom/android/videomaker/f;->aLc:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/videomaker/f;->aLb:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1345
    iput-object v2, p0, Lcom/android/videomaker/f;->aLc:Landroid/media/AudioManager;

    .line 1342
    :cond_e
    return-void
.end method

.method private bbz(ILjava/lang/String;I)V
    .registers 7

    .prologue
    .line 1039
    iput p1, p0, Lcom/android/videomaker/f;->aLd:I

    .line 1040
    iget-object v0, p0, Lcom/android/videomaker/f;->aLa:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    iget-object v0, p0, Lcom/android/videomaker/f;->aLO:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a033c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    iget-object v0, p0, Lcom/android/videomaker/f;->aLO:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1038
    return-void
.end method

.method static synthetic bca(Lcom/android/videomaker/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/videomaker/f;->baY()V

    return-void
.end method

.method static synthetic bcb(Lcom/android/videomaker/f;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/videomaker/f;->bbg(I)V

    return-void
.end method

.method static synthetic bcc(Lcom/android/videomaker/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/videomaker/f;->bbn()V

    return-void
.end method

.method static synthetic bcd(Lcom/android/videomaker/f;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/videomaker/f;->bbA(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public baL()V
    .registers 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/videomaker/f;->aLa:Landroid/widget/Button;

    if-eqz v0, :cond_21

    .line 360
    iget-object v0, p0, Lcom/android/videomaker/f;->aLa:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0339

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/android/videomaker/f;->aLO:Landroid/widget/Button;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/videomaker/f;->aLO:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 363
    :cond_21
    iget-object v0, p0, Lcom/android/videomaker/f;->aLD:Landroid/widget/Button;

    if-eqz v0, :cond_37

    .line 364
    iget-object v0, p0, Lcom/android/videomaker/f;->aLD:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a033e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :cond_37
    iget-object v0, p0, Lcom/android/videomaker/f;->aLU:Landroid/widget/Button;

    if-eqz v0, :cond_4d

    .line 367
    iget-object v0, p0, Lcom/android/videomaker/f;->aLU:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0342

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_4d
    return-void
.end method

.method public baO()Z
    .registers 2

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/android/videomaker/f;->aLs:Z

    return v0
.end method

.method public baU()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x105

    const/4 v2, 0x0

    .line 238
    iget-boolean v0, p0, Lcom/android/videomaker/f;->aLs:Z

    if-nez v0, :cond_9

    return-void

    .line 240
    :cond_9
    invoke-virtual {p0}, Lcom/android/videomaker/f;->bax()V

    .line 241
    iget-object v0, p0, Lcom/android/videomaker/f;->aLN:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/videomaker/f;->aLN:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_21

    .line 242
    invoke-direct {p0}, Lcom/android/videomaker/f;->baA()V

    .line 243
    iput-boolean v2, p0, Lcom/android/videomaker/f;->aLs:Z

    .line 244
    iput-object v4, p0, Lcom/android/videomaker/f;->aLN:Landroid/view/View;

    .line 246
    :cond_21
    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 247
    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->qn(Z)V

    .line 249
    iget v0, p0, Lcom/android/videomaker/f;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    .line 250
    invoke-direct {p0}, Lcom/android/videomaker/f;->bat()V

    .line 252
    :cond_37
    iget-object v0, p0, Lcom/android/videomaker/f;->aLp:Landroid/os/Handler;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    iget-object v0, p0, Lcom/android/videomaker/f;->aLp:Landroid/os/Handler;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object v0, p0, Lcom/android/videomaker/f;->aLp:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    iget-object v0, p0, Lcom/android/videomaker/f;->aLp:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 256
    invoke-virtual {p0}, Lcom/android/videomaker/f;->bau()V

    .line 237
    return-void
.end method

.method public ban()V
    .registers 1

    .prologue
    .line 1263
    invoke-virtual {p0}, Lcom/android/videomaker/f;->bbx()V

    .line 1262
    return-void
.end method

.method public bar(Landroid/net/Uri;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 915
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 916
    iput-object p1, p0, Lcom/android/videomaker/f;->aLW:Landroid/net/Uri;

    .line 917
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/videomaker/f;->bap(Ljava/lang/String;)V

    .line 913
    :cond_17
    :goto_17
    return-void

    .line 918
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/videomaker/f;->baR(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 919
    iput-object p1, p0, Lcom/android/videomaker/f;->aLW:Landroid/net/Uri;

    .line 923
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/android/videomaker/service/MakerService;->aZm(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_17

    .line 925
    :cond_26
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    const v1, 0x7f0a0350

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 927
    iget-object v0, p0, Lcom/android/videomaker/f;->aLB:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/videomaker/f;->aLC:Landroid/net/Uri;

    if-eqz v0, :cond_17

    .line 930
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/videomaker/f;->aLC:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/android/videomaker/service/MakerService;->aZm(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_17
.end method

.method public bau()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 490
    const-string/jumbo v0, "clearData"

    invoke-static {v0}, Lcom/android/videomaker/f;->baV(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/videomaker/service/MakerService;->aZe(Landroid/content/Context;)V

    .line 492
    iget-object v0, p0, Lcom/android/videomaker/f;->aLS:Lcom/android/videomaker/h;

    invoke-static {v0}, Lcom/android/videomaker/service/MakerService;->aZf(Lcom/android/videomaker/service/c;)V

    .line 495
    iget-object v0, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 496
    :cond_1a
    iget-object v0, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    invoke-virtual {v0}, Lcom/android/videomaker/ThumbImageListView;->clear()V

    .line 498
    :cond_23
    iget-object v0, p0, Lcom/android/videomaker/f;->aLZ:Ljava/io/File;

    if-eqz v0, :cond_57

    .line 499
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/videomaker/f;->aLZ:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 499
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/android/videomaker/f;->aLZ:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 502
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 503
    invoke-static {v0}, Lcom/android/videomaker/a/b;->aYk(Ljava/io/File;)Z

    .line 507
    :cond_57
    iget-object v0, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_62

    .line 508
    iget-object v0, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 509
    iput-object v4, p0, Lcom/android/videomaker/f;->aLJ:Landroid/media/MediaPlayer;

    .line 511
    :cond_62
    invoke-direct {p0}, Lcom/android/videomaker/f;->bav()V

    .line 512
    iput-object v4, p0, Lcom/android/videomaker/f;->aLC:Landroid/net/Uri;

    .line 513
    iput-object v4, p0, Lcom/android/videomaker/f;->aLW:Landroid/net/Uri;

    .line 514
    iput-object v4, p0, Lcom/android/videomaker/f;->aLB:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public bax()V
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/videomaker/f;->aLx:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/videomaker/f;->aLx:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 219
    :cond_14
    :goto_14
    return-void

    .line 221
    :cond_15
    iget-object v0, p0, Lcom/android/videomaker/f;->aLx:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_14
.end method

.method public bay()V
    .registers 3

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/videomaker/f;->aLs:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 227
    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/videomaker/f;->aLT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 229
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videomaker/f;->aLs:Z

    .line 230
    iget-object v0, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 232
    invoke-direct {p0}, Lcom/android/videomaker/f;->baM()V

    .line 233
    invoke-direct {p0}, Lcom/android/videomaker/f;->baN()V

    .line 234
    invoke-direct {p0}, Lcom/android/videomaker/f;->baz()V

    .line 225
    return-void
.end method

.method bba()V
    .registers 3

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/videomaker/f;->aLj:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    .line 860
    iget-object v0, p0, Lcom/android/videomaker/f;->aLj:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 861
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/videomaker/f;->mState:I

    .line 858
    :cond_e
    return-void
.end method

.method bbb(I)V
    .registers 7

    .prologue
    const/16 v0, 0x64

    .line 849
    iget-object v1, p0, Lcom/android/videomaker/f;->aLj:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/videomaker/f;->aLk:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3c

    .line 850
    iget-object v1, p0, Lcom/android/videomaker/f;->aLl:Landroid/widget/TextView;

    if-eqz v1, :cond_3c

    .line 851
    iget-object v1, p0, Lcom/android/videomaker/f;->aLk:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 852
    mul-int/lit8 v1, p1, 0x64

    iget v2, p0, Lcom/android/videomaker/f;->aLQ:I

    add-int/lit8 v2, v2, 0x64

    div-int/2addr v1, v2

    .line 853
    if-le v1, v0, :cond_3d

    .line 854
    :goto_1c
    iget-object v1, p0, Lcom/android/videomaker/f;->aLl:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/videomaker/f;->aKY:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v0, 0x7f0a0344

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    :cond_3c
    return-void

    :cond_3d
    move v0, v1

    goto :goto_1c
.end method

.method public bbc(I)V
    .registers 4

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    invoke-virtual {v0, p1}, Lcom/android/videomaker/ThumbImageListView;->getItem(I)Lcom/android/videomaker/a;

    move-result-object v0

    .line 561
    if-nez v0, :cond_9

    return-void

    .line 563
    :cond_9
    iget v0, p0, Lcom/android/videomaker/f;->mState:I

    if-nez v0, :cond_10

    .line 564
    invoke-virtual {p0}, Lcom/android/videomaker/f;->bbx()V

    .line 567
    :cond_10
    iget-object v0, p0, Lcom/android/videomaker/f;->aLp:Landroid/os/Handler;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 568
    return-void
.end method

.method public bbk()V
    .registers 7

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/videomaker/f;->aLY:Lcom/android/videomaker/ThumbImageListView;

    invoke-virtual {v0}, Lcom/android/videomaker/ThumbImageListView;->bdU()I

    move-result v0

    .line 467
    iget-object v1, p0, Lcom/android/videomaker/f;->aLR:Landroid/widget/TextView;

    if-eqz v1, :cond_2a

    .line 468
    iget-object v1, p0, Lcom/android/videomaker/f;->aLR:Landroid/widget/TextView;

    .line 469
    iget-object v2, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0346

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 468
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 470
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 468
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :cond_2a
    iget-object v1, p0, Lcom/android/videomaker/f;->aLi:Landroid/widget/TextView;

    if-eqz v1, :cond_76

    .line 473
    iget-object v1, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0347

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 474
    iget-object v2, p0, Lcom/android/videomaker/f;->aKX:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 475
    iget-object v3, p0, Lcom/android/videomaker/f;->aLi:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/videomaker/f;->aLo:I

    invoke-direct {p0, v4, v0}, Lcom/android/videomaker/f;->baD(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 476
    const-string/jumbo v1, " "

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :cond_76
    return-void
.end method

.method public bbl()V
    .registers 5

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/videomaker/f;->aLr:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 460
    iget-object v0, p0, Lcom/android/videomaker/f;->aLr:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/videomaker/f;->baE()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/videomaker/f;->baB(IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 462
    :cond_13
    invoke-virtual {p0}, Lcom/android/videomaker/f;->bbk()V

    .line 458
    return-void
.end method

.method public bbp(Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/videomaker/f;->aLL:Ljava/util/ArrayList;

    .line 207
    return-void
.end method

.method public bbq(Lcom/android/videomaker/g;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/videomaker/f;->aLw:Lcom/android/videomaker/g;

    .line 215
    return-void
.end method

.method public bbx()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 727
    iget-object v0, p0, Lcom/android/videomaker/f;->aLH:Lcom/android/videomaker/LooperShowView;

    invoke-virtual {v0}, Lcom/android/videomaker/LooperShowView;->stop()V

    .line 728
    iget-object v0, p0, Lcom/android/videomaker/f;->aLH:Lcom/android/videomaker/LooperShowView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/videomaker/LooperShowView;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/android/videomaker/f;->aLr:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/android/videomaker/f;->aLG:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 732
    invoke-direct {p0}, Lcom/android/videomaker/f;->bby()V

    .line 733
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbw()V

    .line 734
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/videomaker/f;->mState:I

    .line 736
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbn()V

    .line 726
    return-void
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 740
    iget v0, p0, Lcom/android/videomaker/f;->mState:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 618
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_a2

    .line 615
    :cond_9
    :goto_9
    return-void

    .line 620
    :sswitch_a
    iget v0, p0, Lcom/android/videomaker/f;->mState:I

    if-nez v0, :cond_12

    .line 621
    invoke-virtual {p0}, Lcom/android/videomaker/f;->bbx()V

    goto :goto_9

    .line 623
    :cond_12
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbj()V

    goto :goto_9

    .line 629
    :sswitch_16
    iget v0, p0, Lcom/android/videomaker/f;->mState:I

    if-nez v0, :cond_1d

    .line 630
    invoke-virtual {p0}, Lcom/android/videomaker/f;->bbx()V

    .line 632
    :cond_1d
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbo()V

    goto :goto_9

    .line 638
    :sswitch_21
    iget v0, p0, Lcom/android/videomaker/f;->mState:I

    if-nez v0, :cond_28

    .line 639
    invoke-virtual {p0}, Lcom/android/videomaker/f;->bbx()V

    .line 641
    :cond_28
    iget-object v0, p0, Lcom/android/videomaker/f;->aLB:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/videomaker/f;->aLC:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/videomaker/service/MakerService;->aZi(Landroid/content/Context;Landroid/net/Uri;)V

    .line 647
    :cond_33
    const-string/jumbo v0, "documentsui"

    invoke-direct {p0, v0}, Lcom/android/videomaker/f;->bao(Ljava/lang/String;)V

    goto :goto_9

    .line 652
    :sswitch_3a
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbr()V

    .line 653
    iget v0, p0, Lcom/android/videomaker/f;->mState:I

    if-nez v0, :cond_45

    .line 654
    invoke-virtual {p0}, Lcom/android/videomaker/f;->bbx()V

    goto :goto_9

    .line 656
    :cond_45
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbn()V

    goto :goto_9

    .line 662
    :sswitch_49
    iget v0, p0, Lcom/android/videomaker/f;->mState:I

    if-nez v0, :cond_50

    .line 663
    invoke-virtual {p0}, Lcom/android/videomaker/f;->bbx()V

    .line 665
    :cond_50
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbt()V

    goto :goto_9

    .line 670
    :sswitch_54
    iget v0, p0, Lcom/android/videomaker/f;->mState:I

    if-nez v0, :cond_5b

    .line 671
    invoke-virtual {p0}, Lcom/android/videomaker/f;->bbx()V

    .line 673
    :cond_5b
    invoke-virtual {p0}, Lcom/android/videomaker/f;->baU()V

    goto :goto_9

    .line 678
    :sswitch_5f
    invoke-direct {p0}, Lcom/android/videomaker/f;->baP()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 679
    const-string/jumbo v0, "VideoMakerPage"

    const-string/jumbo v1, "wlb  invalid State busy...."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 682
    :cond_6f
    iget v0, p0, Lcom/android/videomaker/f;->mState:I

    if-nez v0, :cond_76

    .line 683
    invoke-virtual {p0}, Lcom/android/videomaker/f;->bbx()V

    .line 685
    :cond_76
    invoke-direct {p0}, Lcom/android/videomaker/f;->baT()Z

    move-result v0

    if-nez v0, :cond_89

    .line 686
    iget-object v0, p0, Lcom/android/videomaker/f;->aLf:Landroid/content/Context;

    const v1, 0x7f0a045a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 690
    :cond_89
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/videomaker/f;->mState:I

    .line 691
    invoke-static {v1}, Lcom/android/videomaker/service/MakerService;->aZj(Z)V

    .line 692
    invoke-direct {p0}, Lcom/android/videomaker/f;->bas()V

    .line 693
    iget v0, p0, Lcom/android/videomaker/f;->aLQ:I

    if-eqz v0, :cond_9

    .line 694
    invoke-direct {p0}, Lcom/android/videomaker/f;->bbv()V

    .line 695
    invoke-static {v2}, Lcom/android/videomaker/a/b;->aYl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/f;->aLF:Ljava/lang/String;

    goto/16 :goto_9

    .line 618
    nop

    :sswitch_data_a2
    .sparse-switch
        0x7f100107 -> :sswitch_54
        0x7f1001f1 -> :sswitch_a
        0x7f1001f8 -> :sswitch_16
        0x7f1001f9 -> :sswitch_49
        0x7f1001fa -> :sswitch_3a
        0x7f1001fb -> :sswitch_21
        0x7f1001ff -> :sswitch_5f
    .end sparse-switch
.end method
