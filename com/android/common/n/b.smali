.class final Lcom/android/common/n/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic abx:Lcom/android/common/n/a;


# direct methods
.method constructor <init>(Lcom/android/common/n/a;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/common/n/b;->abx:Lcom/android/common/n/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/common/n/b;->abx:Lcom/android/common/n/a;

    invoke-static {v0}, Lcom/android/common/n/a;->aid(Lcom/android/common/n/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/c/b;->bMP(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/common/n/b;->abx:Lcom/android/common/n/a;

    invoke-virtual {v1, v0}, Lcom/android/common/n/a;->ahQ(Ljava/util/Map;)V

    .line 159
    return-void
.end method
