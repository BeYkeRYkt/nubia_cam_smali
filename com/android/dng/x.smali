.class Lcom/android/dng/x;
.super Lcom/android/common/c/d;
.source "SourceFile"


# instance fields
.field private aBm:I

.field final synthetic aBn:Lcom/android/dng/w;


# direct methods
.method public constructor <init>(Lcom/android/dng/w;I)V
    .registers 3

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/dng/x;->aBn:Lcom/android/dng/w;

    invoke-direct {p0}, Lcom/android/common/c/d;-><init>()V

    .line 277
    iput p2, p0, Lcom/android/dng/x;->aBm:I

    .line 276
    return-void
.end method


# virtual methods
.method public hn()V
    .registers 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/dng/x;->aBn:Lcom/android/dng/w;

    iget-object v0, v0, Lcom/android/dng/w;->aBl:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPn(Lcom/android/dng/c;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    iget v1, p0, Lcom/android/dng/x;->aBm:I

    invoke-virtual {v0, v1}, Lcom/android/common/setting/IconListPreference;->Vt(I)V

    .line 283
    iget-object v0, p0, Lcom/android/dng/x;->aBn:Lcom/android/dng/w;

    iget-object v0, v0, Lcom/android/dng/w;->aBl:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPp(Lcom/android/dng/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dng/x;->aBn:Lcom/android/dng/w;

    iget-object v1, v1, Lcom/android/dng/w;->aBl:Lcom/android/dng/c;

    invoke-static {v1}, Lcom/android/dng/c;->aPi(Lcom/android/dng/c;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/android/dng/x;->aBm:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/android/dng/x;->aBn:Lcom/android/dng/w;

    iget-object v0, v0, Lcom/android/dng/w;->aBl:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPo(Lcom/android/dng/c;)Lcom/android/dng/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dng/d;->notifyDataSetChanged()V

    .line 285
    iget-object v0, p0, Lcom/android/dng/x;->aBn:Lcom/android/dng/w;

    iget-object v0, v0, Lcom/android/dng/w;->aBl:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPk(Lcom/android/dng/c;)Lcom/android/dng/e;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 286
    iget-object v0, p0, Lcom/android/dng/x;->aBn:Lcom/android/dng/w;

    iget-object v0, v0, Lcom/android/dng/w;->aBl:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPk(Lcom/android/dng/c;)Lcom/android/dng/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dng/x;->aBn:Lcom/android/dng/w;

    iget-object v1, v1, Lcom/android/dng/w;->aBl:Lcom/android/dng/c;

    invoke-static {v1}, Lcom/android/dng/c;->aPn(Lcom/android/dng/c;)Lcom/android/common/setting/IconListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->Vw()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dng/x;->aBn:Lcom/android/dng/w;

    iget-object v2, v2, Lcom/android/dng/w;->aBl:Lcom/android/dng/c;

    invoke-static {v2}, Lcom/android/dng/c;->aPn(Lcom/android/dng/c;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/dng/e;->aPu(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_5c
    return-void
.end method

.method public ho()I
    .registers 2

    .prologue
    .line 292
    const/4 v0, -0x1

    return v0
.end method
