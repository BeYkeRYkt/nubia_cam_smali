.class final Lcom/android/multiexposure/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic arB:Lcom/android/multiexposure/o;


# direct methods
.method constructor <init>(Lcom/android/multiexposure/o;)V
    .registers 2

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/multiexposure/z;->arB:Lcom/android/multiexposure/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/multiexposure/z;->arB:Lcom/android/multiexposure/o;

    iget-object v0, v0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCb()I

    move-result v0

    if-eqz v0, :cond_38

    .line 520
    iget-object v0, p0, Lcom/android/multiexposure/z;->arB:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDu(Lcom/android/multiexposure/o;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 521
    return-void

    .line 523
    :cond_13
    iget-object v0, p0, Lcom/android/multiexposure/z;->arB:Lcom/android/multiexposure/o;

    iget-object v0, v0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aBX()V

    .line 524
    iget-object v0, p0, Lcom/android/multiexposure/z;->arB:Lcom/android/multiexposure/o;

    iget-object v1, p0, Lcom/android/multiexposure/z;->arB:Lcom/android/multiexposure/o;

    invoke-static {v1}, Lcom/android/multiexposure/o;->aDv(Lcom/android/multiexposure/o;)Lcom/android/common/appService/W;

    move-result-object v1

    iget-object v2, p0, Lcom/android/multiexposure/z;->arB:Lcom/android/multiexposure/o;

    invoke-static {v2}, Lcom/android/multiexposure/o;->aDr(Lcom/android/multiexposure/o;)I

    move-result v2

    iget-object v3, p0, Lcom/android/multiexposure/z;->arB:Lcom/android/multiexposure/o;

    iget-object v3, v3, Lcom/android/multiexposure/o;->aqS:Lcom/android/multiexposure/m;

    invoke-static {v1, v2, v3}, Lcom/android/multiexposure/n;->aCy(Lcom/android/common/appService/W;ILcom/android/multiexposure/m;)Lcom/android/multiexposure/c;

    move-result-object v1

    iput-object v1, v0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    .line 526
    iget-object v0, p0, Lcom/android/multiexposure/z;->arB:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDB(Lcom/android/multiexposure/o;)V

    .line 527
    return-void

    .line 518
    :cond_38
    return-void
.end method
