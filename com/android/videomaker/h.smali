.class Lcom/android/videomaker/h;
.super Lcom/android/videomaker/service/c;
.source "SourceFile"


# instance fields
.field final synthetic aMb:Lcom/android/videomaker/f;


# direct methods
.method private constructor <init>(Lcom/android/videomaker/f;)V
    .registers 2

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-direct {p0}, Lcom/android/videomaker/service/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/videomaker/f;Lcom/android/videomaker/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/videomaker/h;-><init>(Lcom/android/videomaker/f;)V

    return-void
.end method


# virtual methods
.method public aZM(Ljava/lang/Exception;)V
    .registers 5

    .prologue
    .line 1136
    const-string/jumbo v0, "onVideoEditorCreated"

    invoke-static {v0}, Lcom/android/videomaker/f;->bbY(Ljava/lang/String;)V

    .line 1137
    if-eqz p1, :cond_1a

    .line 1139
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbC(Lcom/android/videomaker/f;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0352

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1134
    :goto_19
    return-void

    .line 1143
    :cond_1a
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    iget-object v1, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v1}, Lcom/android/videomaker/f;->bbL(Lcom/android/videomaker/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/videomaker/f;->bbW(Lcom/android/videomaker/f;Ljava/util/ArrayList;)V

    goto :goto_19
.end method

.method public aZN()V
    .registers 4

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbE(Lcom/android/videomaker/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v1}, Lcom/android/videomaker/f;->bbE(Lcom/android/videomaker/f;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x107

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1247
    return-void
.end method

.method public aZO(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 1174
    const-string/jumbo v0, "onAudioTrackAdded"

    invoke-static {v0}, Lcom/android/videomaker/f;->bbY(Ljava/lang/String;)V

    .line 1175
    if-eqz p2, :cond_38

    .line 1176
    const-string/jumbo v0, "VideoMakerPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioTrackAdded exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbC(Lcom/android/videomaker/f;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0350

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1173
    :cond_37
    :goto_37
    return-void

    .line 1178
    :cond_38
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbO(Lcom/android/videomaker/f;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1182
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    iget-object v1, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v1}, Lcom/android/videomaker/f;->bbO(Lcom/android/videomaker/f;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/videomaker/f;->bbS(Lcom/android/videomaker/f;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1183
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    iget-object v1, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v1}, Lcom/android/videomaker/f;->bbI(Lcom/android/videomaker/f;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/videomaker/f;->bbR(Lcom/android/videomaker/f;Ljava/lang/String;)Ljava/lang/String;

    .line 1184
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v0, v3}, Lcom/android/videomaker/f;->bbU(Lcom/android/videomaker/f;Z)Z

    .line 1185
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbM(Lcom/android/videomaker/f;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    iget-object v2, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v2}, Lcom/android/videomaker/f;->bbJ(Lcom/android/videomaker/f;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/videomaker/f;->bbV(Lcom/android/videomaker/f;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37
.end method

.method public aZP(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1253
    const-string/jumbo v0, "onVideoEditorExportCanceled"

    invoke-static {v0}, Lcom/android/videomaker/f;->bbY(Ljava/lang/String;)V

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "filename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPendingExportFilename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1255
    iget-object v1, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v1}, Lcom/android/videomaker/f;->bbK(Lcom/android/videomaker/f;)Ljava/lang/String;

    move-result-object v1

    .line 1254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videomaker/f;->bbY(Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/videomaker/f;->bbP(Lcom/android/videomaker/f;Z)Z

    .line 1257
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbK(Lcom/android/videomaker/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    return-void

    .line 1252
    :cond_41
    return-void
.end method

.method public aZQ(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Exception;Z)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVideoEditorExportComplete, cancelled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1215
    const-string/jumbo v1, ", exception = "

    .line 1214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videomaker/f;->bbY(Ljava/lang/String;)V

    .line 1216
    if-nez p1, :cond_26

    .line 1217
    return-void

    .line 1219
    :cond_26
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/videomaker/f;->bbP(Lcom/android/videomaker/f;Z)Z

    .line 1220
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbK(Lcom/android/videomaker/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1221
    const-string/jumbo v0, "return 3"

    invoke-static {v0}, Lcom/android/videomaker/f;->bbY(Ljava/lang/String;)V

    .line 1222
    return-void

    .line 1225
    :cond_3f
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    iget-object v1, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v1}, Lcom/android/videomaker/f;->bbK(Lcom/android/videomaker/f;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/videomaker/f;->bcd(Lcom/android/videomaker/f;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1229
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-virtual {v0}, Lcom/android/videomaker/f;->bba()V

    .line 1231
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v0, v2}, Lcom/android/videomaker/f;->bbT(Lcom/android/videomaker/f;Ljava/lang/String;)Ljava/lang/String;

    .line 1232
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-virtual {v0}, Lcom/android/videomaker/f;->baU()V

    .line 1234
    if-eqz p3, :cond_6c

    .line 1235
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbC(Lcom/android/videomaker/f;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0353

    .line 1236
    const/4 v2, 0x1

    .line 1235
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1213
    :cond_6c
    return-void
.end method

.method public aZR(Ljava/lang/Exception;)V
    .registers 5

    .prologue
    .line 1166
    const-string/jumbo v0, "onVideoEditorDeleted"

    invoke-static {v0}, Lcom/android/videomaker/f;->bbY(Ljava/lang/String;)V

    .line 1167
    if-eqz p1, :cond_19

    .line 1168
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbC(Lcom/android/videomaker/f;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0355

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1165
    :cond_19
    return-void
.end method

.method public aZS(Ljava/lang/String;I)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVideoEditorExportProgress, progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videomaker/f;->bbY(Ljava/lang/String;)V

    .line 1201
    if-nez p1, :cond_1b

    return-void

    .line 1202
    :cond_1b
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbK(Lcom/android/videomaker/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1203
    return-void

    .line 1206
    :cond_28
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/videomaker/f;->bbP(Lcom/android/videomaker/f;Z)Z

    .line 1208
    iget-object v0, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbE(Lcom/android/videomaker/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v1}, Lcom/android/videomaker/f;->bbE(Lcom/android/videomaker/f;)Landroid/os/Handler;

    move-result-object v1

    .line 1209
    iget-object v2, p0, Lcom/android/videomaker/h;->aMb:Lcom/android/videomaker/f;

    invoke-static {v2}, Lcom/android/videomaker/f;->bbN(Lcom/android/videomaker/f;)I

    move-result v2

    add-int/2addr v2, p2

    const/16 v3, 0x106

    const/4 v4, 0x0

    .line 1208
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1199
    return-void
.end method
