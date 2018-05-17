.class final Lcom/android/common/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ala:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/android/common/ag;->ala:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/common/ag;->ala:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1190
    const-string/jumbo v1, "more_settings"

    .line 1189
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/common/o/p;

    .line 1191
    if-eqz v0, :cond_14

    .line 1192
    invoke-virtual {v0}, Lcom/android/common/o/p;->akC()V

    .line 1188
    :cond_14
    return-void
.end method
