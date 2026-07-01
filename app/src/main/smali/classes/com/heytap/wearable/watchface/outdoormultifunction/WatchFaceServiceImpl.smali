.class public final Lcom/heytap/wearable/watchface/outdoormultifunction/WatchFaceServiceImpl;
.super Lcom/heytap/wearable/support/watchface/base/WatchFaceService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/watchface/outdoormultifunction/WatchFaceServiceImpl$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/base/WatchFaceService;-><init>()V

    return-void
.end method


# virtual methods
.method public final createWatchFaceView(Landroid/content/Context;I)Lm0/p;
    .locals 1

    new-instance v0, Lcom/heytap/wearable/watchface/outdoormultifunction/WatchFaceServiceImpl$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/heytap/wearable/watchface/outdoormultifunction/WatchFaceServiceImpl$a;-><init>(Lcom/heytap/wearable/watchface/outdoormultifunction/WatchFaceServiceImpl;Landroid/content/Context;I)V

    return-object v0
.end method

.method public final createWatchFaceView(Landroid/content/Context;ILjava/lang/String;)Lm0/p;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/heytap/wearable/watchface/outdoormultifunction/WatchFaceServiceImpl;->createWatchFaceView(Landroid/content/Context;I)Lm0/p;

    move-result-object v0

    return-object v0
.end method
