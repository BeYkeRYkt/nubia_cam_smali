.class public Lu/aly/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static d:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:B

.field public final c:Lu/aly/cw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/cv;->d:Ljava/util/Map;

    .line 44
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;BLu/aly/cw;)V
    .registers 5

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lu/aly/cv;->a:Ljava/lang/String;

    .line 48
    int-to-byte v0, p2

    iput-byte v0, p0, Lu/aly/cv;->b:B

    .line 49
    iput-object p3, p0, Lu/aly/cv;->c:Lu/aly/cw;

    .line 50
    return-void
.end method

.method public static bUh(Ljava/lang/Class;Ljava/util/Map;)V
    .registers 3

    .prologue
    .line 53
    sget-object v0, Lu/aly/cv;->d:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
