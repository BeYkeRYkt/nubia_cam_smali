.class public Lcom/android/common/h/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static Yy:Ljava/lang/String;


# instance fields
.field private YA:I

.field private Yz:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string/jumbo v0, "com.android.camera.specification"

    sput-object v0, Lcom/android/common/h/n;->Yy:Ljava/lang/String;

    .line 13
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/h/n;->Yz:Landroid/content/Context;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/h/n;->YA:I

    .line 20
    iput-object p1, p0, Lcom/android/common/h/n;->Yz:Landroid/content/Context;

    .line 21
    iput p2, p0, Lcom/android/common/h/n;->YA:I

    .line 19
    return-void
.end method


# virtual methods
.method public aco()V
    .registers 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/common/h/n;->Yz:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 33
    const-string/jumbo v0, "SpecificationListener"

    const-string/jumbo v1, "mContext is null."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 36
    :cond_e
    iget v0, p0, Lcom/android/common/h/n;->YA:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 37
    const-string/jumbo v0, "SpecificationListener"

    const-string/jumbo v1, "mTypeValue is -1."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void

    .line 40
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    const-string/jumbo v1, "Specification"

    iget v2, p0, Lcom/android/common/h/n;->YA:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    sget-object v1, Lcom/android/common/h/n;->Yy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/android/common/h/n;->Yz:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 26
    const-string/jumbo v0, "SpecificationListener"

    const-string/jumbo v1, "onClick"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Lcom/android/common/c/l;->hI(Lcom/android/common/h/n;)Lcom/android/common/c/a;

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 25
    return-void
.end method
