.class Lcom/android/trajectory/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic asV:Lcom/android/trajectory/a;


# direct methods
.method private constructor <init>(Lcom/android/trajectory/a;)V
    .registers 2

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/android/trajectory/e;->asV:Lcom/android/trajectory/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/trajectory/a;Lcom/android/trajectory/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/trajectory/e;-><init>(Lcom/android/trajectory/a;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/trajectory/e;->asV:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEU(Lcom/android/trajectory/a;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 1214
    const-string/jumbo v0, "TrajectoryFragment"

    const-string/jumbo v1, "can\'t ChangeButtonClickListener ,because is making"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    return-void

    .line 1217
    :cond_16
    iget-object v0, p0, Lcom/android/trajectory/e;->asV:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEI(Lcom/android/trajectory/a;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1218
    const-string/jumbo v0, "TrajectoryFragment"

    const-string/jumbo v1, "can\'t ChangeButtonClickListener ,because is saving"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    return-void

    .line 1221
    :cond_28
    iget-object v0, p0, Lcom/android/trajectory/e;->asV:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEQ(Lcom/android/trajectory/a;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3b

    .line 1222
    const-string/jumbo v0, "TrajectoryFragment"

    const-string/jumbo v1, "can\'t ChangeButtonClickListener ,because is not AFTER_PLAY"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    return-void

    .line 1225
    :cond_3b
    iget-object v0, p0, Lcom/android/trajectory/e;->asV:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEJ(Lcom/android/trajectory/a;)[I

    move-result-object v0

    invoke-static {}, Lcom/android/trajectory/a;->aEv()[I

    move-result-object v1

    if-ne v0, v1, :cond_5c

    .line 1226
    iget-object v0, p0, Lcom/android/trajectory/e;->asV:Lcom/android/trajectory/a;

    invoke-static {}, Lcom/android/trajectory/a;->aEu()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aFa(Lcom/android/trajectory/a;[I)[I

    .line 1232
    :goto_50
    iget-object v0, p0, Lcom/android/trajectory/e;->asV:Lcom/android/trajectory/a;

    iget-object v1, p0, Lcom/android/trajectory/e;->asV:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEJ(Lcom/android/trajectory/a;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aFh(Lcom/android/trajectory/a;[I)V

    .line 1212
    return-void

    .line 1227
    :cond_5c
    iget-object v0, p0, Lcom/android/trajectory/e;->asV:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEJ(Lcom/android/trajectory/a;)[I

    move-result-object v0

    invoke-static {}, Lcom/android/trajectory/a;->aEu()[I

    move-result-object v1

    if-ne v0, v1, :cond_72

    .line 1228
    iget-object v0, p0, Lcom/android/trajectory/e;->asV:Lcom/android/trajectory/a;

    invoke-static {}, Lcom/android/trajectory/a;->aEt()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aFa(Lcom/android/trajectory/a;[I)[I

    goto :goto_50

    .line 1230
    :cond_72
    iget-object v0, p0, Lcom/android/trajectory/e;->asV:Lcom/android/trajectory/a;

    invoke-static {}, Lcom/android/trajectory/a;->aEv()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aFa(Lcom/android/trajectory/a;[I)[I

    goto :goto_50
.end method
