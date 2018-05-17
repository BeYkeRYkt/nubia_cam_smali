.class Lcom/android/front/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/Y;


# instance fields
.field final synthetic aNH:Lcom/android/front/a;


# direct methods
.method constructor <init>(Lcom/android/front/a;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/front/b;->aNH:Lcom/android/front/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Dl()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/front/b;->aNH:Lcom/android/front/a;

    invoke-static {v0}, Lcom/android/front/a;->bep(Lcom/android/front/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asi()V

    .line 165
    iget-object v0, p0, Lcom/android/front/b;->aNH:Lcom/android/front/a;

    invoke-static {v0}, Lcom/android/front/a;->beq(Lcom/android/front/a;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 166
    iget-object v0, p0, Lcom/android/front/b;->aNH:Lcom/android/front/a;

    invoke-static {v0}, Lcom/android/front/a;->ber(Lcom/android/front/a;)V

    .line 163
    :cond_1a
    return-void
.end method
