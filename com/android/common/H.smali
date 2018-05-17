.class final Lcom/android/common/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic akz:Lcom/android/common/g;


# direct methods
.method constructor <init>(Lcom/android/common/g;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/common/H;->akz:Lcom/android/common/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/H;->akz:Lcom/android/common/g;

    invoke-static {v3}, Lcom/android/common/g;->aoL(Lcom/android/common/g;)Lcom/android/common/ActivityBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/ActivityBase;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    iget-object v1, p0, Lcom/android/common/H;->akz:Lcom/android/common/g;

    invoke-static {v1}, Lcom/android/common/g;->aoL(Lcom/android/common/g;)Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lcom/android/common/H;->akz:Lcom/android/common/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/g;->aoM(Lcom/android/common/g;Z)Z

    .line 83
    return-void
.end method
