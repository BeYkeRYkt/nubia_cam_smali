.class final Lcom/android/e/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic aXG:Lcom/android/e/b;


# direct methods
.method constructor <init>(Lcom/android/e/b;)V
    .registers 2

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/e/i;->aXG:Lcom/android/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/e/i;->aXG:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->bot(Lcom/android/e/b;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 182
    return-void

    .line 184
    :cond_9
    const-string/jumbo v0, "pref_camera_member"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 185
    iget-object v0, p0, Lcom/android/e/i;->aXG:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boo(Lcom/android/e/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_2a

    .line 186
    iget-object v0, p0, Lcom/android/e/i;->aXG:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boH(Lcom/android/e/b;)V

    .line 187
    iget-object v0, p0, Lcom/android/e/i;->aXG:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boJ(Lcom/android/e/b;)V

    .line 180
    :cond_2a
    return-void
.end method
