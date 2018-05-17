.class final Lcom/android/videomaker/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/b/c;


# instance fields
.field final synthetic aJY:Lcom/android/videomaker/b/b;


# direct methods
.method constructor <init>(Lcom/android/videomaker/b/b;)V
    .registers 2

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/videomaker/b/h;->aJY:Lcom/android/videomaker/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aZa(J)V
    .registers 6

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/videomaker/b/h;->aJY:Lcom/android/videomaker/b/b;

    long-to-int v1, p1

    invoke-static {v0, v1}, Lcom/android/videomaker/b/b;->aYW(Lcom/android/videomaker/b/b;I)V

    .line 343
    return-void
.end method
