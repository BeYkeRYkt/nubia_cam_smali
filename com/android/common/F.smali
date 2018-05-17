.class final Lcom/android/common/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic akx:Lcom/android/common/g;


# direct methods
.method constructor <init>(Lcom/android/common/g;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/common/F;->akx:Lcom/android/common/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/common/F;->akx:Lcom/android/common/g;

    invoke-static {v0}, Lcom/android/common/g;->aoL(Lcom/android/common/g;)Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->finish()V

    .line 66
    iget-object v0, p0, Lcom/android/common/F;->akx:Lcom/android/common/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/g;->aoM(Lcom/android/common/g;Z)Z

    .line 64
    return-void
.end method
