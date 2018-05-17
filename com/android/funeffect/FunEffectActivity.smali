.class public Lcom/android/funeffect/FunEffectActivity;
.super Lcom/android/common/ActivityBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/common/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected auf()Lcom/android/common/appService/y;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/funeffect/FunEffectActivity;->aiY:Lcom/android/common/appService/y;

    if-nez v0, :cond_b

    .line 12
    new-instance v0, Lcom/android/funeffect/c;

    invoke-direct {v0}, Lcom/android/funeffect/c;-><init>()V

    iput-object v0, p0, Lcom/android/funeffect/FunEffectActivity;->aiY:Lcom/android/common/appService/y;

    .line 14
    :cond_b
    iget-object v0, p0, Lcom/android/funeffect/FunEffectActivity;->aiY:Lcom/android/common/appService/y;

    return-object v0
.end method
