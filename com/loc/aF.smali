.class Lcom/loc/aF;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic bfV:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/aF;->bfV:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/loc/aF;->bfV:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_6

    :goto_5
    return-object v3

    :cond_6
    iget-object v0, p0, Lcom/loc/aF;->bfV:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_5

    :catch_c
    move-exception v0

    const-string/jumbo v1, "SPUtil"

    const-string/jumbo v2, "commit"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/loc/aF;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
