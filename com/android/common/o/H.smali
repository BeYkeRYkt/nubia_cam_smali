.class final Lcom/android/common/o/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic aeJ:Lcom/android/common/o/p;


# direct methods
.method constructor <init>(Lcom/android/common/o/p;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/common/o/H;->aeJ:Lcom/android/common/o/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/common/o/H;->aeJ:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amv(Lcom/android/common/o/p;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p3

    .line 136
    invoke-static {}, Lcom/android/common/o/p;->ami()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMoreSettingList onItemClick arg2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v0}, Lcom/android/common/appService/M;->nZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 138
    const-string/jumbo v1, "pref_camera_storage_path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 139
    invoke-static {}, Lcom/android/common/s;->aru()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 141
    :cond_43
    const-string/jumbo v1, "pref_picture_artist_info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 142
    iget-object v0, p0, Lcom/android/common/o/H;->aeJ:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amq(Lcom/android/common/o/p;)Lcom/android/common/ui/R;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 143
    iget-object v0, p0, Lcom/android/common/o/H;->aeJ:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amq(Lcom/android/common/o/p;)Lcom/android/common/ui/R;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/R;->BT()V

    .line 134
    :cond_5d
    :goto_5d
    return-void

    .line 140
    :cond_5e
    return-void

    .line 146
    :cond_5f
    iget-object v1, p0, Lcom/android/common/o/H;->aeJ:Lcom/android/common/o/p;

    invoke-static {v1, v0}, Lcom/android/common/o/p;->amw(Lcom/android/common/o/p;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/android/common/o/H;->aeJ:Lcom/android/common/o/p;

    iget-object v1, p0, Lcom/android/common/o/H;->aeJ:Lcom/android/common/o/p;

    invoke-static {v1}, Lcom/android/common/o/p;->amn(Lcom/android/common/o/p;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/o/p;->amA(Lcom/android/common/o/p;Ljava/lang/String;)V

    goto :goto_5d

    .line 149
    :cond_70
    invoke-static {v0}, Lcom/android/common/appService/M;->oc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 150
    instance-of v0, p2, Lcom/android/common/ui/ZtemtInlineSettingSwitch;

    .line 149
    if-eqz v0, :cond_5d

    .line 151
    check-cast p2, Lcom/android/common/ui/ZtemtInlineSettingSwitch;

    invoke-virtual {p2}, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->vV()V

    goto :goto_5d
.end method
