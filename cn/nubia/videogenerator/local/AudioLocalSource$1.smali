.class Lcn/nubia/videogenerator/local/AudioLocalSource$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "audio/amr"

    const-string/jumbo v1, ".amr"

    .line 31
    invoke-virtual {p0, v0, v1}, Lcn/nubia/videogenerator/local/AudioLocalSource$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "audio/amr-wb"

    const-string/jumbo v1, ".amr"

    .line 32
    invoke-virtual {p0, v0, v1}, Lcn/nubia/videogenerator/local/AudioLocalSource$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "audio/3gpp"

    const-string/jumbo v1, ".amr"

    .line 33
    invoke-virtual {p0, v0, v1}, Lcn/nubia/videogenerator/local/AudioLocalSource$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "audio/mp4a-latm"

    const-string/jumbo v1, ".m4a"

    .line 34
    invoke-virtual {p0, v0, v1}, Lcn/nubia/videogenerator/local/AudioLocalSource$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "audio/aac"

    const-string/jumbo v1, ".aac"

    .line 35
    invoke-virtual {p0, v0, v1}, Lcn/nubia/videogenerator/local/AudioLocalSource$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
